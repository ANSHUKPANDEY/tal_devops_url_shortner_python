variable "aws_region" {
  description = "AWS region for EKS cluster"
  default     = "ap-south-1"
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  default     = "eks-cluster-assignment"
}

variable "node_instance_type" {
  description = "EC2 instance type for worker nodes"
  default     = "t2.medium"
}

variable "eks_node_group_name" {
  description = "Name of the EKS node group"
  default     = "eks-cluster-assignment"
}

variable "subnet_ids" {
  type    = list(string)
  default = ["subnet-5720613f", "subnet-d5318699", "subnet-606e881b"]
}
