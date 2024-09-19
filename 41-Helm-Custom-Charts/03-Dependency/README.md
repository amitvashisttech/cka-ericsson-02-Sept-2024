
  744  mkdir 03-Dependency
  746  cd 03-Dependency/
  748  cp -rf ../01-Versioning/v3/my-tiny-web .
  751  cd my-tiny-web/
  754  helm search repo nginx
  755  helm search repo list
  756  vim Chart.yaml
  760  helm --help
  761  helm dependency --help
  762  helm dependency list my-tiny-web/
  763  helm dependency update my-tiny-web/
  764  helm dependency list my-tiny-web/
  766  ls -ltr my-tiny-web/charts/nginx-18.1.14.tgz
  768  cp -rf my-tiny-web/values.yaml custom-values.yaml
  770  vim custom-values.yaml
  774  helm list
  776  helm install custom-app ./my-tiny-web -f custom-values.yaml --dry-run
  776  helm install custom-app ./my-tiny-web -f custom-values.yaml 
  777  kubectl get all

