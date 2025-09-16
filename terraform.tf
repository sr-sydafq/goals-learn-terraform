# The terraform block

# Notes
# The terraform block is a special block that is used to configure the Terraform settings for your configuration.
# terraform {} configures Terraform itself, including which providers to install, and 
# which version of Terraform to use to provision your infrastructure
terraform {
  # This is how you specify the providers your configuration requires
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.92"
    }
  }

  # If you do not specify a version constraint, Terraform defaults to the most recent version of the provider.
  # We recommend using version constraints to ensure that Terraform does not install a version of the provider
  # that you have not tested with your configuration.
  required_version = ">= 1.2"
}
