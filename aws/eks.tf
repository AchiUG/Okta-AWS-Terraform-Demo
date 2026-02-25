module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.0"

  cluster_name                    = "cicd-eks"
  cluster_version                 = "1.30"
  cluster_endpoint_public_access  = true
  cluster_endpoint_private_access = false

  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets

  eks_managed_node_groups = {
    default = {
      instance_types = ["t3.medium"]
      min_size       = 1
      max_size       = 2
      desired_size   = 1
      capacity_type  = "ON_DEMAND"
      subnet_ids     = module.vpc.private_subnets
    }
  }

  access_entries = {
    achi_admin = {
      principal_arn = "arn:aws:iam::363341493372:user/Achi"
      type          = "STANDARD"
      access_policies = [
        {
          policy_arn   = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSClusterAdminPolicy"
          access_scope = { type = "cluster" }
        }
      ]
    }
  }

}


