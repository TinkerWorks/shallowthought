#!/usr/bin/env bash


curl -O https://raw.githubusercontent.com/traefik/traefik/master/docs/content/reference/dynamic-configuration/kubernetes-crd-rbac.yml
curl -O https://raw.githubusercontent.com/traefik/traefik/master/docs/content/reference/dynamic-configuration/kubernetes-crd-definition-v1.yml

#curl -O https://raw.githubusercontent.com/traefik/traefik/v2.10/docs/content/reference/dynamic-configuration/kubernetes-crd-rbac.yml
#curl -O https://raw.githubusercontent.com/traefik/traefik/v2.10/docs/content/reference/dynamic-configuration/kubernetes-crd-definition-v1.yml

sed -e 's/namespace: default/namespace: traefik/' -i kubernetes-crd-rbac.yml
sed -e 's/namespace: default/namespace: traefik/' -i kubernetes-crd-definition-v1.yml
