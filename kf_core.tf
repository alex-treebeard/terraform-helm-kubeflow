locals {
  cert_resource = var.enable_https ? yamlencode({
    apiVersion : "cert-manager.io/v1",
    kind : "Certificate",
    metadata : {
      name : "gateway-cert",
      namespace : "istio-system"
    },
    spec : {
      commonName : var.hostname,
      dnsNames : [var.hostname]
      issuerRef : {
        kind : "Issuer",
        name : "treebeard-issuer"
      }
      secretName : "gateway-cert"
    }
  }) : ""

  gateway_patch = yamlencode({
    apiVersion : "networking.istio.io/v1alpha3",
    kind : "Gateway",
    metadata : {
      name : "kubeflow-gateway",
      namespace : "kubeflow",
    },
    spec : {
      selector : {
        istio : "ingressgateway",
      },
      servers : [{
        hosts : [var.hostname],
        port : {
          name : var.enable_https ? "https" : "http",
          number : var.enable_https ? 443 : 80,
          protocol : var.enable_https ? "HTTPS" : "HTTP",
        },
        tls : var.enable_https ? {
          credentialName : "gateway-cert",
          mode : "SIMPLE",
        } : null,
      }],
    },
  })
}

resource "null_resource" "kf_core_start" {
  provisioner "local-exec" {
    command = "echo '⏳ Installing Kubeflow core...'"
  }

  depends_on = [
    helm_release.dex
  ]
}

resource "helm_release" "kubeflow_namespace" {
  name      = "kubeflow-namespace"
  namespace = "argo-cd"
  chart     = "${path.module}/charts/argo_app"
  values = [
    <<EOF
    name: kubeflow-namespace
    repoURL: https://github.com/kubeflow/manifests
    path: common/kubeflow-namespace/base
    targetRevision: 776d4f4
    EOF
  ]
}

resource "helm_release" "kubeflow_roles" {
  name      = "kubeflow-roles"
  namespace = "argo-cd"
  chart     = "${path.module}/charts/argo_app"
  values = [
    <<EOF
    name: kubeflow-roles
    repoURL: https://github.com/kubeflow/manifests
    path: common/kubeflow-roles/base
    targetRevision: 776d4f4
    EOF
  ]
  depends_on = [
    helm_release.kubeflow_namespace
  ]
}

resource "helm_release" "kubeflow_istio_resources" {
  count  = var.enable_istio_resources ? 1 : 0
  name      = "kubeflow-istio-resources"
  namespace = "argo-cd"
  chart     = "${path.module}/charts/argo_app"
  values = [
    <<EOF
    name: kubeflow-istio-resources
    repoURL: https://github.com/kubeflow/manifests
    path: common/istio-1-17/kubeflow-istio-resources/base
    targetRevision: 776d4f4
    EOF
  ]
  depends_on = [
    helm_release.kubeflow_namespace
  ]
}

resource "null_resource" "kf_core_end" {
  provisioner "local-exec" {
    command = "echo '✅ Kubeflow core installed'"
  }

  depends_on = [
    helm_release.kubeflow_namespace,
    helm_release.kubeflow_roles,
    helm_release.kubeflow_istio_resources,
  ]
}