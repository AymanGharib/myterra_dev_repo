//--------------------------------------------------------------------
// Variables



//--------------------------------------------------------------------
// Modules
module "compute" {
  source  = "app.terraform.io/FSTT/compute/aws"
  version = "1.0.0"

  aws_region = "us-east-1"
  public_key_material = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQD9yxTEJ7D9Q4bPSQW/CN8wo9XwpR9bVcJVEA9j9lBt8FAyWIem+IZaIePwjLD8IgNfd894ovFhdKP43BitkVVs41npRbeDsfbb82OU647xPd5mq5NsCiEbN26gxjLTDe1iXK3OTKBdp3H1+JsT5ojhna2Mf1FRzgSoZz/DjmCI9sAnMYQYeggCe8Sn0QOtBchwBWzFuiJP2R1LG/CJ3D9wG6jO0Ykh72aV6vADxvHhETuxqYvTv9zwruGPlzZgXmAT8IZuMYhq7bQl73sdsJ6PDP2wEn/OfVFuNM8jespwm5ixAmVkYU1//vMVotaZe004oygyTS/ug/hZID49ElTxK+VwDNWHq5y0Fpu3z95gExn/WnEcVA46+b0HD74+lEfFT76oV8Mz687yA3QfAY6HV+Bi5bbXm6JXIfxUz+2sJJxJJb6ZWoDVE2Wja+3QP6wQw5u74InUd3UL7amIBkPTs/+sl/TGLydi9qE+lBxnnTUPHTMOEizyFSCauJuqvks= ayman@DESKTOP-541SBKH"
  public_sg = "${module.networking.public_sg}"
  public_subnets = "${module.networking.public_subnets}"
}

module "networking" {
  source  = "app.terraform.io/FSTT/networking/aws"
  version = "1.0.0"

  access_ip = "0.0.0.0/0"
  aws_region = "us-east-1"
}