#https://argo-cd.readthedocs.io/en/stable/getting_started/
#install ArgoCD
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

#Download Argo CD CLI
brew install argocd

#Port Forwarding
kubectl port-forward svc/argocd-server -n argocd 8080:443


#Login Using The CLI
kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d; echo

argocd login localhost:8080

kubectl apply -f apps.yml