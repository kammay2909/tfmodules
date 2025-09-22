resource "aws_instance" "ec2instance" {
  ami           = var.ami_id
  key_name      = var.key_name
  instance_type = var.vmtype

  tags = {
    Name = "NexusServer"
  }
}

resource "aws_s3_bucket" "mybucket" {
  bucket = "my-tf-test-bucket-19092052"

  tags = {
    Name        = "My_bucket"
    Environment = "Dev"
  }
}