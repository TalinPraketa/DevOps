# main.tf

provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "web" {
  ami           = "ami-0c02fb55956c7d316" # Amazon Linux 2
  instance_type = var.instance_type

  tags = merge(
    var.tags,
    {
      Name        = "${terraform.workspace}-web-server"
    }
  )
}

# Output instance details
output "instance_id" {
  value = aws_instance.web.id
}

output "workspace_name" {
  value = terraform.workspace
}
