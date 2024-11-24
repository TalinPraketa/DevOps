module "network" {
  source             = "../../modules/network"
  vpc_cidr           = "10.0.0.0/16"
  public_subnet_cidr = "10.0.1.0/24"
  environment        = "dev"
}

module "compute" {
  source      = "../../modules/compute"
  subnet_id   = module.network.subnet_id
  instance_type = var.instance_type
  environment = "dev"
}
