## Kubernetes Commands

Create or update resources in a Kubernetes cluster according to the specifications defined in the provided configuration file, which can include a variety of resources such as pods, deployments, services, and more:
```bash
kubectl apply -f <configuration file>
```
Delete Kubernetes resources specified in the given configuration file from the cluster
```bash
kubectl delete -f <configuration file>
```
Lists one or more pods:
```bash
kubectl get pod
```
Delete a pod:
```bash
kubectl delete pod <pod_name>
```
Display the detailed state of a pods:
```bash
kubectl describe pod <pod_name>
```
Get an interactive shell on a single-container pod:
```bash
kubectl exec -it <pod_name> /bin/sh
```
List one or more nodes:
```bash
kubectl get node
```
Create or update the Persistent Volume based on the specifications in the YAML file:
```bash
kubectl apply -f <pv-configuration-file.yaml>
```
Create or update the Persistent Volume Claim to request storage from a PV:
```bash
kubectl apply -f <pvc-configuration-file.yaml>
```
Display endpoint information about the master and services in the cluster:
```bash
kubectl cluster-info
```
Get the configuration of the cluster:
```bash
kubectl config view
```
