###################################################
# Usage
#   make <directory>:a|d
#
#   a: kubectl apply -k <directory>
#   d: kubectl delete -k <directory>
#
#   Example:
#     make gatekeeper:a
#     make gatekeeper:d
#
#   Note:
#     When you create gatekeeper constraints you need to do it twice because it
#     is a two step process. A template must exist before you can create a
#     constraint. There's a race condition in that kustomization.
###################################################

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
