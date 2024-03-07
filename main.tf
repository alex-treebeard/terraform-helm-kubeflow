locals {
  start_message = "⏳ Installing Kubeflow..."
}

resource "null_resource" "start" {
  provisioner "local-exec" {
    command = "echo ${local.start_message}"
  }
}

resource "helm_release" "argo_cd" {
  count = var.enable_argocd ? 1 : 0

  name             = "argo-cd"
  namespace        = "argo-cd"
  chart            = "argo-cd"
  repository       = "https://argoproj.github.io/argo-helm"
  version          = "6.4.1"
  create_namespace = true
  depends_on = [
    null_resource.start
  ]
  values = [
<<EOF
env:
- name: ARGOCD_SYNC_WAVE_DELAY
  value: "10"
dex:
  enabled: false
EOF
  ]
}

resource "helm_release" "kubeflow_apps" {
  name          = "kubeflow-apps"
  namespace     = "argo-cd"
  chart         = "${path.module}/charts/argo_app"
  wait_for_jobs = true
  values = [
<<EOF
repoURL: https://github.com/kubeflow/manifests
targetRevision: dev
EOF
  ]
  depends_on = [
    null_resource.start,
    helm_release.argo_cd
  ]
}