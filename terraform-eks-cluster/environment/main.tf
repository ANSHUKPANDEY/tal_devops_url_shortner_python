module "eks" {
  source               = "../modules"
  cluster_name         = var.cluster_name
  node_instance_type   = var.node_instance_type
  eks_node_group_name  = var.eks_node_group_name
 # eks_role_arn         = var.eks_role_arn
  subnet_ids           = var.subnet_ids
  aws_region           = var.aws_region
}
