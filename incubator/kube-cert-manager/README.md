# kube-cert-manager
manager ssl certs

## Prerequisites Details
* Kubernetes 1.4 with alpha APIs enabled

## Chart Details

This requires a storageclass provisioner (look here https://kubernetes.io/docs/user-guide/persistent-volumes/#storageclasses). For local (minikube) dev you can  use the hostpath-provisioner chart in this repo


## Installing the Chart

To install the chart with the release name `my-release`:

```bash
$ helm repo add incubator https://mirusresearch.github.io/charts
$ helm install --name my-release incubator/kube-cert-manager
```

## Configuration

