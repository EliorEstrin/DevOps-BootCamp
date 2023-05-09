helm dependency update ./democrm-manifenst
kubectl apply -f ./crds cert-manager.crds.yaml
helm install demo ./democrm-manifenst
