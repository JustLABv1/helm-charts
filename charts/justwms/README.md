# exflow

![Version: 1.10.1](https://img.shields.io/badge/Version-1.10.1-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: v1.5.1](https://img.shields.io/badge/AppVersion-v1.5.1-informational?style=flat-square)

An exFlow Helm chart for Kubernetes

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| autoscaling.enabled | bool | `false` |  |
| autoscaling.maxReplicas | int | `15` |  |
| autoscaling.minReplicas | int | `3` |  |
| autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| autoscaling.targetMemoryUtilizationPercentage | int | `80` |  |
| exflow.configMap.data.database.name | string | `"exflow"` |  |
| exflow.configMap.data.database.password | string | `"exflow"` |  |
| exflow.configMap.data.database.port | int | `5432` |  |
| exflow.configMap.data.database.server | string | `"postgres.exflow.svc.cluster.local"` |  |
| exflow.configMap.data.database.user | string | `"exflow"` |  |
| exflow.configMap.data.encryption.enabled | bool | `true` |  |
| exflow.configMap.data.encryption.key | string | `"key"` | maximum length is 32 characters |
| exflow.configMap.data.jwt.secret | string | `"secret"` |  |
| exflow.configMap.data.log_level | string | `"info"` |  |
| exflow.configMap.data.port | int | `8080` |  |
| exflow.configMap.data.runner.shared_runner_secret | string | `"secret"` |  |
| exflow.configMap.enabled | bool | `true` |  |
| exflow.pullPolicy | string | `"Always"` |  |
| exflow.replicas | int | `1` |  |
| exflow.repository | string | `"justnz/exflow"` |  |
| exflow.service.name | string | `"exflow"` |  |
| exflow.service.ports.backend.name | string | `"backend"` |  |
| exflow.service.ports.backend.port | int | `8080` |  |
| exflow.service.ports.backend.targetPort | int | `8080` |  |
| exflow.service.ports.frontend.name | string | `"frontend"` |  |
| exflow.service.ports.frontend.port | int | `3000` |  |
| exflow.service.ports.frontend.targetPort | int | `3000` |  |
| exflow.service.type | string | `"ClusterIP"` |  |
| exflow.tag | string | `""` |  |
| fullnameOverride | string | `""` |  |
| imagePullSecrets | list | `[]` |  |
| ingress.annotations."kubernetes.io/ingress.class" | string | `"traefik"` |  |
| ingress.enabled | bool | `false` |  |
| ingress.hosts[0] | string | `"exflow.org"` |  |
| ingress.hosts[1] | string | `"www.exflow.org"` |  |
| ingress.ingressClassName | string | `"traefik"` |  |
| ingress.tls[0].hosts[0] | string | `"exflow.org"` |  |
| ingress.tls[0].hosts[1] | string | `"www.exflow.org"` |  |
| ingress.tls[0].secretName | string | `"exflow-org-tls"` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| podAnnotations | object | `{}` |  |
| podSecurityContext | object | `{}` |  |
| postgresql.auth.database | string | `"exflow"` |  |
| postgresql.auth.password | string | `"exflow"` |  |
| postgresql.auth.username | string | `"exflow"` |  |
| postgresql.enabled | bool | `true` |  |
| postgresql.image | string | `"postgres:16"` |  |
| postgresql.persistence.enabled | bool | `true` |  |
| postgresql.persistence.size | string | `"20Gi"` |  |
| postgresql.persistence.storageClassName | string | `"default"` |  |
| postgresql.pullPolicy | string | `"IfNotPresent"` |  |
| postgresql.replicas | int | `1` |  |
| postgresql.service.port | int | `5432` |  |
| postgresql.service.type | string | `"ClusterIP"` |  |
| projectRunner.configMap.data.alertflow.enabled | bool | `false` |  |
| projectRunner.configMap.data.api_endpoints.port | int | `8080` |  |
| projectRunner.configMap.data.exflow.enabled | bool | `true` |  |
| projectRunner.configMap.data.exflow.url | string | `"http://localhost:8080"` |  |
| projectRunner.configMap.data.log_level | string | `"info"` |  |
| projectRunner.configMap.data.mode | string | `"master"` |  |
| projectRunner.configMap.data.plugins[0].name | string | `"git"` |  |
| projectRunner.configMap.data.plugins[0].version | string | `"latest"` |  |
| projectRunner.configMap.data.plugins[1].name | string | `"ansible"` |  |
| projectRunner.configMap.data.plugins[1].version | string | `"latest"` |  |
| projectRunner.configMap.data.plugins[2].name | string | `"ssh"` |  |
| projectRunner.configMap.data.plugins[2].version | string | `"latest"` |  |
| projectRunner.configMap.data.runner.shared_runner_secret | string | `"secret"` |  |
| projectRunner.configMap.enabled | bool | `true` |  |
| projectRunner.enabled | bool | `false` |  |
| projectRunner.persistence.accessMode | string | `"ReadWriteMany"` |  |
| projectRunner.persistence.enabled | bool | `false` |  |
| projectRunner.persistence.size | string | `"5Gi"` |  |
| projectRunner.persistence.storageClassName | string | `"default"` |  |
| projectRunner.pullPolicy | string | `"Always"` |  |
| projectRunner.replicas | int | `2` |  |
| projectRunner.repository | string | `"justnz/runner"` |  |
| projectRunner.service.name | string | `"project-runner"` |  |
| projectRunner.service.port | int | `8080` |  |
| projectRunner.service.target_port | int | `8080` |  |
| projectRunner.service.type | string | `"ClusterIP"` |  |
| projectRunner.tag | string | `"latest"` |  |
| resources.requests | object | `{}` |  |
| securityContext | object | `{}` |  |
| sharedRunner.configMap.data.alertflow.enabled | bool | `false` |  |
| sharedRunner.configMap.data.api_endpoints.port | int | `8080` |  |
| sharedRunner.configMap.data.exflow.enabled | bool | `true` |  |
| sharedRunner.configMap.data.exflow.url | string | `"http://localhost:8080"` |  |
| sharedRunner.configMap.data.log_level | string | `"info"` |  |
| sharedRunner.configMap.data.mode | string | `"master"` |  |
| sharedRunner.configMap.data.plugins[0].name | string | `"git"` |  |
| sharedRunner.configMap.data.plugins[0].version | string | `"latest"` |  |
| sharedRunner.configMap.data.plugins[1].name | string | `"ansible"` |  |
| sharedRunner.configMap.data.plugins[1].version | string | `"latest"` |  |
| sharedRunner.configMap.data.plugins[2].name | string | `"ssh"` |  |
| sharedRunner.configMap.data.plugins[2].version | string | `"latest"` |  |
| sharedRunner.configMap.data.runner.shared_runner_secret | string | `"secret"` |  |
| sharedRunner.configMap.enabled | bool | `true` |  |
| sharedRunner.enabled | bool | `false` |  |
| sharedRunner.persistence.accessMode | string | `"ReadWriteMany"` |  |
| sharedRunner.persistence.enabled | bool | `false` |  |
| sharedRunner.persistence.size | string | `"5Gi"` |  |
| sharedRunner.persistence.storageClassName | string | `"default"` |  |
| sharedRunner.pullPolicy | string | `"Always"` |  |
| sharedRunner.replicas | int | `2` |  |
| sharedRunner.repository | string | `"justnz/runner"` |  |
| sharedRunner.service.name | string | `"shared-runner"` |  |
| sharedRunner.service.port | int | `8080` |  |
| sharedRunner.service.target_port | int | `8080` |  |
| sharedRunner.service.type | string | `"ClusterIP"` |  |
| sharedRunner.tag | string | `"latest"` |  |
| tolerations | list | `[]` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.14.2](https://github.com/norwoodj/helm-docs/releases/v1.14.2)
