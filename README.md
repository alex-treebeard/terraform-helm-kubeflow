## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | ~> 2.12.1 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | ~> 2.25.2 |
| <a name="requirement_kustomization"></a> [kustomization](#requirement\_kustomization) | ~> 0.9.5 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_helm"></a> [helm](#provider\_helm) | 2.12.1 |
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | 2.25.2 |
| <a name="provider_kustomization"></a> [kustomization](#provider\_kustomization) | 0.9.5 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_admission_webhook"></a> [admission\_webhook](#module\_admission\_webhook) | ./modules/kust | n/a |
| <a name="module_central_dashboard"></a> [central\_dashboard](#module\_central\_dashboard) | ./modules/kust | n/a |
| <a name="module_cert_manager"></a> [cert\_manager](#module\_cert\_manager) | ./modules/kust | n/a |
| <a name="module_cluster_local_gateway"></a> [cluster\_local\_gateway](#module\_cluster\_local\_gateway) | ./modules/kust | n/a |
| <a name="module_dex"></a> [dex](#module\_dex) | ./modules/kust | n/a |
| <a name="module_istio_crds"></a> [istio\_crds](#module\_istio\_crds) | ./modules/kust | n/a |
| <a name="module_istio_install"></a> [istio\_install](#module\_istio\_install) | ./modules/kust | n/a |
| <a name="module_istio_namespace"></a> [istio\_namespace](#module\_istio\_namespace) | ./modules/kust | n/a |
| <a name="module_jupyter_web_app"></a> [jupyter\_web\_app](#module\_jupyter\_web\_app) | ./modules/kust | n/a |
| <a name="module_knative_serving"></a> [knative\_serving](#module\_knative\_serving) | ./modules/kust | n/a |
| <a name="module_kserve"></a> [kserve](#module\_kserve) | ./modules/kust | n/a |
| <a name="module_kubeflow_issuer"></a> [kubeflow\_issuer](#module\_kubeflow\_issuer) | ./modules/kust | n/a |
| <a name="module_kubeflow_istio_resources"></a> [kubeflow\_istio\_resources](#module\_kubeflow\_istio\_resources) | ./modules/kust | n/a |
| <a name="module_kubeflow_namespace"></a> [kubeflow\_namespace](#module\_kubeflow\_namespace) | ./modules/kust | n/a |
| <a name="module_kubeflow_pipelines"></a> [kubeflow\_pipelines](#module\_kubeflow\_pipelines) | ./modules/kust | n/a |
| <a name="module_kubeflow_profile"></a> [kubeflow\_profile](#module\_kubeflow\_profile) | ./modules/kust | n/a |
| <a name="module_kubeflow_ray_rbac"></a> [kubeflow\_ray\_rbac](#module\_kubeflow\_ray\_rbac) | ./modules/kust | n/a |
| <a name="module_kubeflow_roles"></a> [kubeflow\_roles](#module\_kubeflow\_roles) | ./modules/kust | n/a |
| <a name="module_mlflow_istio"></a> [mlflow\_istio](#module\_mlflow\_istio) | ./modules/kust | n/a |
| <a name="module_models_web_app"></a> [models\_web\_app](#module\_models\_web\_app) | ./modules/kust | n/a |
| <a name="module_notebook_controller"></a> [notebook\_controller](#module\_notebook\_controller) | ./modules/kust | n/a |
| <a name="module_oidc_authservice"></a> [oidc\_authservice](#module\_oidc\_authservice) | ./modules/kust | n/a |
| <a name="module_profiles_kfam"></a> [profiles\_kfam](#module\_profiles\_kfam) | ./modules/kust | n/a |
| <a name="module_pvc_viewer_controller"></a> [pvc\_viewer\_controller](#module\_pvc\_viewer\_controller) | ./modules/kust | n/a |
| <a name="module_tensorboard_web_app"></a> [tensorboard\_web\_app](#module\_tensorboard\_web\_app) | ./modules/kust | n/a |
| <a name="module_volumes_web_app"></a> [volumes\_web\_app](#module\_volumes\_web\_app) | ./modules/kust | n/a |

## Resources

| Name | Type |
|------|------|
| [helm_release.external_secrets](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |
| [helm_release.gatekeeper](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |
| [helm_release.gpu_operator](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |
| [helm_release.kuberay_operator](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |
| [helm_release.mlflow](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |
| [kubernetes_namespace.tkf_system](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/namespace) | resource |
| [kustomization_build.admission_webhook](https://registry.terraform.io/providers/kbst/kustomization/latest/docs/data-sources/build) | data source |
| [kustomization_build.central_dashboard](https://registry.terraform.io/providers/kbst/kustomization/latest/docs/data-sources/build) | data source |
| [kustomization_build.cert_manager](https://registry.terraform.io/providers/kbst/kustomization/latest/docs/data-sources/build) | data source |
| [kustomization_build.cluster_local_gateway](https://registry.terraform.io/providers/kbst/kustomization/latest/docs/data-sources/build) | data source |
| [kustomization_build.istio_crds](https://registry.terraform.io/providers/kbst/kustomization/latest/docs/data-sources/build) | data source |
| [kustomization_build.istio_namespace](https://registry.terraform.io/providers/kbst/kustomization/latest/docs/data-sources/build) | data source |
| [kustomization_build.jupyter_web_app](https://registry.terraform.io/providers/kbst/kustomization/latest/docs/data-sources/build) | data source |
| [kustomization_build.kserve](https://registry.terraform.io/providers/kbst/kustomization/latest/docs/data-sources/build) | data source |
| [kustomization_build.kubeflow_issuer](https://registry.terraform.io/providers/kbst/kustomization/latest/docs/data-sources/build) | data source |
| [kustomization_build.kubeflow_namespace](https://registry.terraform.io/providers/kbst/kustomization/latest/docs/data-sources/build) | data source |
| [kustomization_build.kubeflow_pipelines](https://registry.terraform.io/providers/kbst/kustomization/latest/docs/data-sources/build) | data source |
| [kustomization_build.kubeflow_ray_rbac](https://registry.terraform.io/providers/kbst/kustomization/latest/docs/data-sources/build) | data source |
| [kustomization_build.kubeflow_roles](https://registry.terraform.io/providers/kbst/kustomization/latest/docs/data-sources/build) | data source |
| [kustomization_build.mlflow_istio](https://registry.terraform.io/providers/kbst/kustomization/latest/docs/data-sources/build) | data source |
| [kustomization_build.models_web_app](https://registry.terraform.io/providers/kbst/kustomization/latest/docs/data-sources/build) | data source |
| [kustomization_build.notebook_controller](https://registry.terraform.io/providers/kbst/kustomization/latest/docs/data-sources/build) | data source |
| [kustomization_build.profiles_kfam](https://registry.terraform.io/providers/kbst/kustomization/latest/docs/data-sources/build) | data source |
| [kustomization_build.pvc_viewer_controller](https://registry.terraform.io/providers/kbst/kustomization/latest/docs/data-sources/build) | data source |
| [kustomization_build.tensorboard_web_app](https://registry.terraform.io/providers/kbst/kustomization/latest/docs/data-sources/build) | data source |
| [kustomization_build.volumes_web_app](https://registry.terraform.io/providers/kbst/kustomization/latest/docs/data-sources/build) | data source |
| [kustomization_overlay.dex](https://registry.terraform.io/providers/kbst/kustomization/latest/docs/data-sources/overlay) | data source |
| [kustomization_overlay.istio_install](https://registry.terraform.io/providers/kbst/kustomization/latest/docs/data-sources/overlay) | data source |
| [kustomization_overlay.knative_serving](https://registry.terraform.io/providers/kbst/kustomization/latest/docs/data-sources/overlay) | data source |
| [kustomization_overlay.kubeflow_istio_resources](https://registry.terraform.io/providers/kbst/kustomization/latest/docs/data-sources/overlay) | data source |
| [kustomization_overlay.kubeflow_profile](https://registry.terraform.io/providers/kbst/kustomization/latest/docs/data-sources/overlay) | data source |
| [kustomization_overlay.oidc_authservice](https://registry.terraform.io/providers/kbst/kustomization/latest/docs/data-sources/overlay) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_enable_external_dns"></a> [enable\_external\_dns](#input\_enable\_external\_dns) | n/a | `bool` | `true` | no |
| <a name="input_enable_external_secrets"></a> [enable\_external\_secrets](#input\_enable\_external\_secrets) | n/a | `bool` | `false` | no |
| <a name="input_enable_gatekeeper"></a> [enable\_gatekeeper](#input\_enable\_gatekeeper) | n/a | `bool` | `false` | no |
| <a name="input_enable_gpu_operator"></a> [enable\_gpu\_operator](#input\_enable\_gpu\_operator) | n/a | `bool` | `false` | no |
| <a name="input_enable_kserve"></a> [enable\_kserve](#input\_enable\_kserve) | n/a | `bool` | `false` | no |
| <a name="input_enable_kubeflow_pipelines"></a> [enable\_kubeflow\_pipelines](#input\_enable\_kubeflow\_pipelines) | n/a | `bool` | `false` | no |
| <a name="input_enable_kuberay"></a> [enable\_kuberay](#input\_enable\_kuberay) | n/a | `bool` | `false` | no |
| <a name="input_enable_mlflow"></a> [enable\_mlflow](#input\_enable\_mlflow) | n/a | `bool` | `false` | no |
| <a name="input_enable_tensorboard"></a> [enable\_tensorboard](#input\_enable\_tensorboard) | n/a | `bool` | `false` | no |
| <a name="input_hostname"></a> [hostname](#input\_hostname) | n/a | `string` | `"localhost"` | no |
| <a name="input_port"></a> [port](#input\_port) | n/a | `string` | `"8080"` | no |
| <a name="input_protocol"></a> [protocol](#input\_protocol) | n/a | `string` | `"http://"` | no |

## Outputs

No outputs.
