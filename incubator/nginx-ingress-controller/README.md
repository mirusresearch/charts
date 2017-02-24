# nginx-ingress-controller

hostpath-provisioner is an out-of-tree dynamic provisioner for Kubernetes 1.4+.
You can use it to quickly & easily deploy shared storage that works in your local minikube cluster.

## Prerequisites Details
* Kubernetes 1.4 with alpha APIs enabled

## Chart Details
This chart will do the following:

* Setup an functional hostpath provisioner

## Installing the Chart

To install the chart with the release name `my-release`:

```bash
$ helm repo add mirus https://mirusresearch.github.io/charts/incubator/
$ helm install --name my-release mirus-incubator/hostpath-provisioner
```

## Configuration

The following tables lists the configurable parameters of the etcd chart and their default values.


| Parameter               | Description                            | Default                                                    |
| ----------------------- | -------------------------------------- | ---------------------------------------------------------- |
| `image`                 | Container image name                   | `alectroemel/hostpath-provisioner`                         |
| `imageTag`              | Container image tag                    | `latest`                                                   |
| `provisionerName`       | Provisoner Name                        | `cluster.local/hostpath`                                   |
| `storageClass`          | The provisioner storage Class          | `local-hostpath`                                           |
| `defaultClass`          | Set-up as default class                | `true`                                                     |
| `hostPath`              | Set-up where data is store on the host | `/tmp`                                                     |


Specify each parameter using the `--set key=value[,key=value]` argument to `helm install`.

Alternatively, a YAML file that specifies the values for the parameters can be provided while installing the chart. For example,

```bash
$ helm install --name my-release -f values.yaml incubator/nfs-provisioner
```

> **Tip**: You can use the default [values.yaml](values.yaml)
