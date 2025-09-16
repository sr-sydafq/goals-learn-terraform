# The configuration block 

# The provider block configures options that apply to all resources
# managed by your provider, such as the region to create them in.
provider "aws" {
  region = "us-west-2"
}

# The data block allows data to be fetched or computed for use elsewhere in Terraform configuration.
# In this example, we are fetching the most recent Ubuntu AMI ID for the us-west
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-*"]
  }

  owners = ["099720109477"] # Canonical
}

# The resource block describes one or more infrastructure objects, such as virtual networks,
# compute instances, or higher-level components such as DNS records.
# In this example, we are creating an EC2 instance using the AWS provider.
resource "aws_instance" "app_server" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"

  tags = {
    Name = "learn-terraform"
  }
}
