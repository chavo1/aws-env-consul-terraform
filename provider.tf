# The default "aws" configuration is used for AWS resources in the root
# module where no explicit provider instance is selected.
provider "aws" {
  region = var.region["virginia"]
}

# An alternate configuration is also defined for a different
# region, using the alias "usw2".
provider "aws" {
  alias  = "ohio"
  region = var.region["ohio"]
}
