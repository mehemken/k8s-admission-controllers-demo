.PHONY: %
%:
	@if [ $(filter %:a,$(MAKECMDGOALS)) ]; then \
		kubectl apply -k $(patsubst %:a,%,$(MAKECMDGOALS)); \
	fi
	@if [ $(filter %:d,$(MAKECMDGOALS)) ]; then \
		kubectl delete -k $(patsubst %:d,%,$(MAKECMDGOALS)); \
	fi

kind:
	kind create cluster --name admctl --config kind-cluster.yaml
