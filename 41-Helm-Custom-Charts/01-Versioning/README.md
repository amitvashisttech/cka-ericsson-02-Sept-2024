961  mkdir 41-Helm-Custom-Charts
  962  ls
  963  cd 41-Helm-Custom-Charts/
  964  ls
  965  helm create my-tiny-web
  966  ls
  967  apt-get install tree -y
  968  tree my-tiny-web/
  969  ls
  970  cd my-tiny-web/
  971  ls
  972  cat Chart.yaml
  973  ls
  974  ls -ltr charts/
  975  ls
  976  cat templates/service
  977  cat templates/service/
  978  cat templates/service.yaml
  979  ls
  980  vim values.yaml
  981  ls
  982  cd ..
  983  ls
  984  helm install my-web my-tiny-web --dry-run
  985  helm install my-web my-tiny-web
  986  helm list
  987  kubectl  get po
  988  kubectl  get po,deploy,svc
  989  kubectl edit svc my-web-my-tiny-web
  990  kubectl  get po,deploy,svc
  991  ls
  992  mkdir v1
  993  ls
  994  cp -rf my-tiny-web v1/
  995  ls
  996  mkdir v2
  997  ls
  998  cd v2/
  999  ls
 1000  cp -rf ../my-tiny-web .
 1001  ls
 1002  cd my-tiny-web/
 1003  ls
 1004  vim values.yaml
 1005  ls
 1006  kubectl edit svc my-web-my-tiny-web
 1007  kubectl  get po,deploy,svc
 1008  kubectl  delete service/nginx-sts-svc
 1009  kubectl  get po,deploy,svc
 1010  ls
 1011  cd ..
 1012  ls
 1013  helm  list
 1014  helm upgrade my-web my-tiny-web
 1015  helm  list
 1016  kubectl  get po
 1017  kubectl  get svc
 1018  ls
 1019  cd ..
 1020  ls
 1021  rm -rf my-tiny-web
 1022  ls
 1023  helm  list
 1024  ls
 1025  vi v2/my-tiny-web/Chart.yaml
 1026  ls
 1027  helm upgrade my-web v2/my-tiny-web
 1028  helm  list
 1029  cp -rf v2 v3
 1030  vi v3/my-tiny-web/Chart.yaml
 1031  vi v3/my-tiny-web/values.yaml
 1032  ls
 1033  helm upgrade my-web v3/my-tiny-web
 1034  helm  list
 1035  kubectl  get po
 1036  kubectl  get svc
 1037  kubectl  get deploy
 1038  kubectl  get rs
 1039  helm  list
 1040  helm  history my-web
 1041  helm  rollback my-web
 1042  helm  history my-web
 1043  helm  rollback my-web
 1044  helm  history my-web
 1045  helm  rollback my-web --help
 1046  helm  history my-web
 1047  helm  rollback my-web 2
 1048  helm  history my-web
 1049  kubectl  get po
 1050  kubectl  get svc

