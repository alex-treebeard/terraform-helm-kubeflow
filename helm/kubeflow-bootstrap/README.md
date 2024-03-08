# kubeflow-bootstrap

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square)

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| additionalAnnotations | object | `{}` |  |
| additionalLabels | object | `{}` |  |
| destination.namespace | string | `"argocd"` |  |
| destination.server | string | `"https://kubernetes.default.svc"` |  |
| finalizers[0] | string | `"resources-finalizer.argocd.argoproj.io"` |  |
| name | string | `"000-treebeard-kubeflow"` |  |
| namespace | string | `"argocd"` |  |
| project | string | `"default"` |  |
| sources[0].chart | string | `"kubeflow-argo-apps"` |  |
| sources[0].helm.ignoreMissingValueFiles | bool | `true` |  |
| sources[0].helm.values | string | `"# pass in terraform outputs from cloud resources\n# e.g. ARNs, node labels, etc.\n"` |  |
| sources[0].repoURL | string | `"ghcr.io/treebeardtech"` |  |
| sources[0].targetRevision | string | `"0.1-2024-03-08-T12-25-15"` |  |
| syncPolicy.automated.prune | bool | `false` |  |
| syncPolicy.automated.selfHeal | bool | `false` |  |
