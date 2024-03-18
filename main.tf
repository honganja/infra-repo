module "eks" {
  # eks 모듈에서 사용할 변수 정의
  source = "./modules/eks-cluster"
  cluster_name = "fast-cluster"
  cluster_version = "1.24"
  vpc_id = "vpc-0e3ad6fbb93003a7a"

  private_subnets = ["subnet-04222f02b10077951", "subnet-0be606bf97e4b2960"]
  public_subnets  = ["subnet-0c7dc7980a6d61158", "subnet-005afa2cae776ebf2"]
}