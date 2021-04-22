#Global Vars
aws_cluster_name = "homelab"

#VPC Vars
aws_vpc_cidr_block       = "10.250.192.0/18"
aws_cidr_subnets_private = ["10.250.192.0/20"]
aws_cidr_subnets_public  = ["10.250.224.0/20"]
# aws_cidr_subnets_public  = ["10.250.224.0/20", "10.250.240.0/20"]

#Bastion Host
aws_bastion_size = "t3.medium"
# count depends on aws_cidr_subnets_public list

#Kubernetes Cluster

aws_kube_master_num  = 1
aws_kube_master_size = "t3.medium"

aws_etcd_num  = 1
aws_etcd_size = "t3.medium"

aws_kube_worker_num  = 3
aws_kube_worker_size = "t3.medium"

#Settings AWS ELB

aws_elb_api_port                = 6443
k8s_secure_api_port             = 6443
kube_insecure_apiserver_address = "0.0.0.0"

default_tags = {
  Env = "homelab"
  Product = "kubernetes"
  Installer = "kubespray"
}

inventory_file = "../../../inventory/hosts"
