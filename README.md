Mirus Charts
===
This repo pulls double duty as both a collection of Helm charts, as well as a published repository for use as a mounted `helm repo`.


How to use
===

Configure helm to see charts in this repo:
---
`helm repo add mirus https://githost/path/to/published/charts/stable/`

Update helm charts:
---
`helm repo update`

Install a chart from this repo:
---
`helm install mirus/consul`


Developing
===

Clone the repo:
---
`git clone ssh://git@mirus.githost.io/Dev/charts`

Make your changes:
---
`... work in stable/yourchartname ...`

Package the chart up:
---
`pushd stable; helm package yourchartname; popd;`

Rebuild the index:
---
`helm repo index stable --url https://githost/path/to/published/charts/`

Push to githost:
---
`git push`

Users of your updated package now must run `helm repo update` and `helm upgrade`