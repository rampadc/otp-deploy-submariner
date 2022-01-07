#!/bin/bash

echo "Deploying submariner"

declare -a array=($CLUSTER_LIST)
echo $array

echo "${array[@]}"
for cluster in "${array[@]}"
do
    echo "deploying submariner on ${cluster} "
    echo \
"apiVersion: addon.open-cluster-management.io/v1alpha1
kind: ManagedClusterAddOn
metadata:
  name: submariner
  namespace: ${cluster}
spec:
  installNamespace: submariner-operator" > deploysubmariner.yaml
    cat deploysubmariner.yaml
    oc apply -f deploysubmariner.yaml
done