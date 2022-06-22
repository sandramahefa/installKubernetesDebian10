#1- Apply updates & install minikube dependencies
sudo apt update -y
sudo apt upgrade -y

#Install necessary package
sudo apt install curl wget apt-transport-https -y
#2- Install KVM hypervisor
#Check the KVM script installation
#3- Install Minikube
wget https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo cp minikube-linux-amd64 /usr/local/bin/minikube
sudo chmod +x /usr/local/bin/minikube
minikube version
#4- Install kubectl tool
curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin
kubectl version -o yaml
minikube start
kubectl cluster-info
kubectl config view