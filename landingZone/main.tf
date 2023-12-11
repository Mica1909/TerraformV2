module "networking" {
  source = "./networking"
  prefix = var.prefix
}

module "dev_management_group" {
  source       = "./management_groups/dev"
  environment  = "dev"
  prefix       = var.prefix
}

module "test_management_group" {
  source       = "./management_groups/test"
  environment  = "test"
  prefix       = var.prefix
}

module "prod_management_group" {
  source       = "./management_groups/prod"
  environment  = "prod"
  prefix       = var.prefix
}

module "shared_management_group" {
  source       = "./management_groups/shared"
  environment  = "shared"
  prefix       = var.prefix
}
