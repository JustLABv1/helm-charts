# justflow

![Version: 1.0.10](https://img.shields.io/badge/Version-1.0.10-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: v2.0.0-beta.12](https://img.shields.io/badge/AppVersion-v2.0.0--beta.12-informational?style=flat-square)

A justFlow Helm chart for Kubernetes

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| autoscaling.enabled | bool | `false` |  |
| autoscaling.maxReplicas | int | `15` |  |
| autoscaling.minReplicas | int | `3` |  |
| autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| autoscaling.targetMemoryUtilizationPercentage | int | `80` |  |
| fullnameOverride | string | `""` |  |
| imagePullSecrets | list | `[]` |  |
| ingress.annotations."kubernetes.io/ingress.class" | string | `"traefik"` |  |
| ingress.enabled | bool | `false` |  |
| ingress.hosts[0] | string | `"myhost.org"` |  |
| ingress.ingressClassName | string | `"traefik"` |  |
| ingress.tls[0].hosts[0] | string | `"myhost.org"` |  |
| ingress.tls[0].secretName | string | `"myhost-tls"` |  |
| justflow.configMap.data.database.name | string | `"justflow"` |  |
| justflow.configMap.data.database.password | string | `"justflow"` |  |
| justflow.configMap.data.database.port | int | `5432` |  |
| justflow.configMap.data.database.server | string | `"postgres.justflow.svc.cluster.local"` |  |
| justflow.configMap.data.database.user | string | `"justflow"` |  |
| justflow.configMap.data.encryption.enabled | bool | `true` |  |
| justflow.configMap.data.encryption.key | string | `"key"` | maximum length is 32 characters |
| justflow.configMap.data.jwt.secret | string | `"secret"` |  |
| justflow.configMap.data.log_level | string | `"info"` |  |
| justflow.configMap.data.port | int | `8080` |  |
| justflow.configMap.data.runner.shared_runner_secret | string | `"secret"` |  |
| justflow.configMap.enabled | bool | `false` |  |
| justflow.persistence.enabled | bool | `true` |  |
| justflow.persistence.size | string | `"2Gi"` |  |
| justflow.persistence.storageClassName | string | `"default"` |  |
| justflow.pullPolicy | string | `"Always"` |  |
| justflow.replicas | int | `1` |  |
| justflow.repository | string | `"ghcr.io/justlabv1/justflow"` |  |
| justflow.service.name | string | `"justflow"` |  |
| justflow.service.ports.backend.name | string | `"backend"` |  |
| justflow.service.ports.backend.port | int | `8080` |  |
| justflow.service.ports.backend.targetPort | int | `8080` |  |
| justflow.service.ports.frontend.name | string | `"frontend"` |  |
| justflow.service.ports.frontend.port | int | `3000` |  |
| justflow.service.ports.frontend.targetPort | int | `3000` |  |
| justflow.service.type | string | `"ClusterIP"` |  |
| justflow.tag | string | `""` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| podAnnotations | object | `{}` |  |
| podSecurityContext.fsGroup | int | `2000` |  |
| podSecurityContext.runAsGroup | int | `3000` |  |
| podSecurityContext.runAsUser | int | `1000` |  |
| podSecurityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| postgresql.auth.database | string | `"justflow"` |  |
| postgresql.auth.password | string | `"justflow"` |  |
| postgresql.auth.username | string | `"justflow"` |  |
| postgresql.enabled | bool | `true` |  |
| postgresql.image | string | `"postgres:16"` |  |
| postgresql.mode | string | `"standalone"` |  |
| postgresql.operator.clusterName | string | `"master-postgres"` |  |
| postgresql.persistence.enabled | bool | `true` |  |
| postgresql.persistence.size | string | `"20Gi"` |  |
| postgresql.persistence.storageClassName | string | `"default"` |  |
| postgresql.pullPolicy | string | `"IfNotPresent"` |  |
| postgresql.replicas | int | `1` |  |
| postgresql.service.port | int | `5432` |  |
| postgresql.service.type | string | `"ClusterIP"` |  |
| projectRunner.configMap.data.alertflow.enabled | bool | `false` |  |
| projectRunner.configMap.data.api_endpoints.port | int | `8080` |  |
| projectRunner.configMap.data.justflow.enabled | bool | `true` |  |
| projectRunner.configMap.data.justflow.url | string | `"http://localhost:8080"` |  |
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
| securityContext.allowPrivilegeEscalation | bool | `false` |  |
| securityContext.capabilities.drop[0] | string | `"ALL"` |  |
| securityContext.readOnlyRootFilesystem | bool | `true` |  |
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
