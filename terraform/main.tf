# Define the provider
provider "aws" {
  region = var.aws_region
}

# Use workspace name to differentiate environments
resource "aws_instance" "web" {
  ami           = "ami-0c02fb55956c7d316" # Amazon Linux 2 AMI
  instance_type = "t2.micro"

  tags = {
    Name = "${terraform.workspace}-web-server"
  }
}

# Output instance details
output "instance_id" {
  value = aws_instance.web.id
}

output "workspace_name" {
  value = terraform.workspace
}
