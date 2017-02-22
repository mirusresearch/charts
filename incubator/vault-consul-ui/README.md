# vault-consul-ui
Simply wraps the vault, consul charts in this repo into 1 happy little chart

## Prerequisites Details
* Kubernetes 1.4 with alpha APIs enabled

## Chart Details
This chart will do the following:

* Implemented a dynamically scalable consul cluster using Kubernetes StatefulSet
* start a vault release

## Installing the Chart

To install the chart with the release name `my-release`:

```bash
$ helm repo add incubator https://mirusresearch.github.io/charts
$ helm install --name my-release incubator/vault-consul-ui
```

## Configuration

