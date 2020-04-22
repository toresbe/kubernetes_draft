kubectl create secret docker-registry regcred --docker-server=https://docker.pkg.github.com --docker-username=toresbe --docker-password=$(cat ~/GITHUB_PACKAGE_TOKEN) --docker-email=toresbe@gmail.com


docker build -t docker.pkg.github.com/toresbe/kube_draft/frontend:0.0.1 ~/frikanalen/packages/frontend/
docker push docker.pkg.github.com/toresbe/kube_draft/frontend:0.0.1

helm repo add traefik https://containous.github.io/traefik-helm-chart

