# Use of tfvars files
# For the exercise I used a tfvars where my access_key and secret_key where initialized.
# Thoses files were not pushed in the repo ... So to test the code you should give those inputs variables (see root > tfvars > access.tfvars for template)

# The tag Name with "N" capital letter to make sure that the given name is displayed in AWS EC2 list
# With the "n" it was not doing so ...
# I went for a free tiers ami (just in case I was not able to figure out quick how to delete with terraform, and that is what happened :-D )

# Resources
# https://learn.hashicorp.com/terraform/getting-started/destroy
# https://learn.hashicorp.com/terraform/getting-started/variables
# https://www.terraform.io/docs/providers/aws/r/instance.html
# https://www.terraform.io/docs/providers/aws/d/instances.html
# https://github.com/hashicorp/terraform/issues/12917


# TODO: Designate a cloud provider, region, and credentials
provider "aws" {
  access_key = var.access[var.access_key]
  secret_key = var.access[var.secret_key]
  region     = var.region
}

# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "Udacity_T2" {
  count         = "4"
  subnet_id     = var.subnet_id
  ami           = var.ami
  instance_type = "t2.micro"
  tags = {
    Name = "Udacity T2"
  }
}

# TODO: provision 2 m4.large EC2 instances named Udacity M4
resource "aws_instance" "Udacity_M4" {
  count         = "2"
  subnet_id     = var.subnet_id
  ami           = var.ami
  instance_type = "m4.large"
  tags = {
    Name = "Udacity M4"
  }
}

