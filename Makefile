install-apps:
	kubectl apply -f apps.yaml

uninstall-apps:
	kubectl delete -f apps.yaml