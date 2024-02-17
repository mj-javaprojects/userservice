# Build and Deployment

## Build
```bash
docker build -t <docker hub repo>/userservice:latest .

# e.g:
docker build -t krishnanmano/userservice:latest .
docker push
```

## Minikube Deployment
```bash
minikube start

kubectl apply -f .\deploy\userservice-kube-app.yml

minikube service userservice-service --url -n demoapp
## Use the url given by above command
```

## Kubernetes Deployment
```bash
kubectl apply -f .\deploy\userservice-kube-app.yml
## Access http://<docker host>:30007
```