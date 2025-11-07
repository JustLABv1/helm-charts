# v1Flows Helm Charts

## Available Charts

* exFlow [Repo](https://github.com/v1Flows/exFlow)
* AlertFlow [Repo](https://github.com/v1Flows/AlertFlow)

## Get Repo Info

```console
helm repo add justlabv1 https://justlabv1.github.io/helm-charts
helm repo update
```

_See [helm repo](https://helm.sh/docs/helm/helm_repo/) for command documentation._

## Installing the Chart

To install the chart with the release name `my-release`:

```console
helm install my-release justlabv1/exflow
```

## Uninstalling the Chart

To uninstall/delete the my-release deployment:

```console
helm delete my-release
```

The command removes all the Kubernetes components associated with the chart and deletes the release.
