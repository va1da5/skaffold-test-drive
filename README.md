# Skaffold Test Drive


## Notes

```bash
# start minikube
minikube start --driver kvm2

# deploy ephemeral Postgres database
kubectl apply -f ./k8s/postgres.yaml

# start application in development mode
# the web application will be available at http://localhost:8000
skaffold dev

# expose application service manually
minikube service --url django
http://192.168.39.81:30311
```


## References
- [Skaffold Quick Start](https://skaffold.dev/docs/quickstart/)
- [OpenShift 3 Database Examples](https://github.com/openshift/origin/tree/master/examples/db-templates)
- [Intro to Skaffold for easy Kubernetes development](https://medium.com/flant-com/skaffold-kubernetes-development-tool-2897d6903e02)
