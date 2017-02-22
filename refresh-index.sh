#!/bin/bash

REPO_DIRS=("stable" "incubator");

for repo_dir in "${REPO_DIRS[@]}"; do
  pushd $repo_dir;
  for fname in `ls -1d */`; do
    helm package $fname;
  done;
  popd;
  helm repo index $repo_dir --url https://mirusresearch.github.io/charts/
done;
