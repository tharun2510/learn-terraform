module "mod1" {
  source = "./mod1"
  input  = module.mod2.out
}

module "mod2"  {
  source = "./mod2"
}