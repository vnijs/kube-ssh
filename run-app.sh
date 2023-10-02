# start a new Minikube cluster:
minikube start

# update your kubectl context to point to the new Minikube cluster
kubectl config use-context minikube

# verify that kubectl is properly configured:
kubectl cluster-info

# deploy using the below
kubectl apply -f deployment-ssh.yaml

# set up the load balancer
kubectl apply -f loadbalancer-ssh.yaml

# check status of your service and find the external IP (if assigned)
kubectl get svc ssh-app -n default

# Note: In Minikube, LoadBalancer services won't get an external IP by default. To access the service, you might need to run:
minikube service ssh-app

# get the Minikube node IP:

minikube ip

kubectl get svc ssh-app -n default -o=jsonpath='{.spec.ports[0].nodePort}'

ssh -vvv root@192.168.49.2 -p 32636

# checking status
kubectl get pods -n default

# issues in logs?
kubectl logs "ssh-app-6694d8b9b7-cf99v" -n default

kubectl exec -it "ssh-app-6694d8b9b7-cf99v" -n default -- /bin/bash

# after connecting try "ssh localhost" --> worked
kubectl get svc ssh-app -n default




# clean up the Kubernetes resources you've created, you can delete the service and deployment
kubectl delete svc ssh-app -n default
kubectl delete deployment ssh-app -n default

kubectl delete svc debugger -n default
kubectl delete deployment debugger -n default



# stop the Minikube cluster:
minikube stop

# completely delete the Minikube cluster and its resources
minikube delete