//--------------------------------------------------------------------
// Variables



//--------------------------------------------------------------------
// Modules
module "compute" {
  source  = "app.terraform.io/FSTT/compute/aws"
  version = "1.0.0"

  aws_region = "us-east-1"
public_sg = "${module.networking.public_sg}"
  public_subnets = "${module.networking.public_subnets}"
}

module "networking" {
  source  = "app.terraform.io/FSTT/networking/aws"
  version = "1.0.0"

  access_ip = "0.0.0.0/0"
  aws_region = "us-east-1"
}
