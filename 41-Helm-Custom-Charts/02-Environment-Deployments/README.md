 1064  mkdir 02-Environment-Deployments
 1065  cp -rf 01-Versioning/v1/my-tiny-web 02-Environment-Deployments/
 1066  ls
 1067  cd 02-Environment-Deployments/
 1068  ls
 1069  cp -rf my-tiny-web/values.yaml dev.yaml
 1070  cp -rf my-tiny-web/values.yaml prod.yaml
 1071  ls
 1072  cat my-tiny-web/values.yaml
 1073  ls
 1074  vim dev.yaml
 1075  vim prod.yaml
 1076  helm install my-web-dev my-tiny-web -f dev.yaml
 1077  helm install my-web-prod my-tiny-web -f prod.yaml
 1078  helm list
 1079  kubectl  get po
 1080  kubectl  get svc
 1081  curl 172.31.0.100:32086
 1082  curl 172.31.0.100:30211

