## zsh history

```bash
nano ~/.ssh/config
  525  sudo nano ~/.ssh/config
  526  ssh root@192.168.202.17
  527  cd it-academy.by
  528  mkdir 12.k8s_workshop
  529  cd 12.k8s_workshop
  530  ssh root@192.168.203.17
  531  nano ~/.zshrc
  532  sudo apt-get -qq update && sudo apt-get install -qqy apt-transport-https conntrack
  533  scp root@192.168.203.17:/root/.kube/config ~/.kube
  534  kubectl get nodes
  535  scp root@192.168.203.17:/root/.kube/config ~/.kube/
  536  kubectl get nodes
  537  rm -rf ~./kube
  538  rm -rf ~/.kube
  539  scp root@192.168.203.17:/root/.kube/config ~/.kube/
  540  scp root@192.168.203.17:/root/.kube/config ~/.kube/config
  541  scp root@192.168.203.17:/root/.kube/config ~/.kube/
  542  rm /home/igor/.kube
  543  rm /home/igor/.kube/
  544  rm -r /home/igor/.kube/
  545  ls -la ~/.kube
  546  kubectl
  547  kubectl config
  548  ls -la ~/.kube
  549  mkdir ~/.kube
  550  scp root@192.168.203.17:/root/.kube/config ~/.kube/
  551  kubectl get nodes
  552  ssh -L 6443:127.0.0.1:6443 root@192.168.203.XX -f -N
  553  ssh -L 6443:127.0.0.1:6443 root@192.168.203.17 -f -N
  554  kubectl get nodes
  555  sudo apt-get update && sudo apt-get install -y apt-transport-https
  556  curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
  557  echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
  558  sudo apt-get update
  559  sudo apt-get install -y kubectl
  560  kubectl version
  561  sudo ls -la /usr/bin/
  562  sudo ls -la /usr/bin/ | grep kubectl
  563  locate kubectl
  564  updatedb
  565  sudo updatedb
  566  locate kubectl
  567  sudo apt remove kubectl
  568  kubectl version
  569  kubectl cluster-info 
  570  kubectl get nodes
  571  kubectl create -f dashboard.yml
  572  kubectl get pods --all-namespaces
  573  kubectl get service --all-namespaces
  574  kubectl apply -f dashboard.yml
  575  clear
  576  kubectl get ingress --all-namespaces
  577  kubectl delete ingress kubernetes-dashboard
  578  kubectl apply -f dashboard.yml
  579  kubectl get ingress --all-namespaces
  580  sudo /etc/init.d/kerio-kvc start
  581  kubectl delete ingress kubernetes-dashboard
  582  kubectl create -f ingress.yml
  583  kubectl get pods --all-namespaces
  584  kubectl get services --all-namespaces
  585  kubectl delete ingress kubernetes-dashboard -n kube-system
  586  kubectl apply -f ingress.yml
  587  sudo nano /etc/hosts
  588  kubectl delete -f dashboard.yml
  589  kubectl create -f dashboard.yml
  590  kubectl get services --all-namespaces
  591  kubectl get ingress --all-namespaces
  592  kubectl apply -f dashboard.yml
  593  kubectl get pods --all-namespaces
  594  kubectl get secret -n kube-system $(kubectl get serviceaccount admin-user -n kube-system -o jsonpath="{.secrets[0].name}") -o jsonpath="{.data.token}" | base64 --decode > token_adm.txt\n
  595  cat token_adm.txt
  596  kubectl get serviceaccounts
  597  kubectl get serviceaccounts --all-namespaces
  598  kubectl get secret -n kube-system $(kubectl get serviceaccount kubernetes-dashboard -n kube-system -o jsonpath="{.secrets[0].name}") -o jsonpath="{.data.token}" | base64 --decode > token_adm.txt\n
  599  cat token_adm.txt
  600  nano token_adm.txt
  601  kubectl get secret -n kube-system $(kubectl get serviceaccount kubernetes-dashboard -n kube-system -o jsonpath="{.secrets[0].name}") -o jsonpath="{.data.token}" | base64 --decode > token_adm.txt\n
  602  kubectl get secret -n kube-system $(kubectl get serviceaccount kubernetes-dashboard-anonymous -n kube-system -o jsonpath="{.secrets[0].name}") -o jsonpath="{.data.token}" | base64 --decode > token_adm.txt\n
  603  kubectl get secret -n kube-system $(kubectl get serviceaccount admin-user -n kube-system -o jsonpath="{.secrets[0].name}") -o jsonpath="{.data.token}" | base64 --decode > token_adm.txt\n
  604  clear
  605  go 
  606  go version
  607  nano ~/.zshrc
  608  go version
  609  cd Documents/it-academy.by/12.k8s_workshop
  610  git clone https://github.com/derailed/k9s.git
  611  cd k9s
  612  make build && ./execs/k9s\n
  613  history
  614  echo $PATH
  615  sudo cp execs/k9s /usr/local/bin
  616  whereis k9s
  617  k9s
  618  history
  619  k9s
  620  kubectl get pods --all-namespaces
  621  cd ..
  622  kubectl create -f metric_srv.yml
  623  k9s
  624  kubectl delete -f metric_srv.yml
  625  kubectl delete -f metric_srv.yml 
  626  cd ..
  627  kubectl delete -f metric_srv.yml 
  628  kubectl create -f metric_srv.yml
  629  k9s
  630  cd it-academy.by
```