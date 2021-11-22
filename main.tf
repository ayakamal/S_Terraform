module "network" {
  source = "./network"
  cidr = var.cidr
  public_1_cidr = var.public_subnet_1_cidr
  public_2_cidr = var.public_subnet_2_cidr
  private_1_cidr = var.private_subnet_1_cidr
}