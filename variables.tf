variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr_a" {
  description = "CIDR block for the public subnet in us-east-1a"
  default     = "10.0.1.0/24"
}

variable "public_subnet_cidr_b" {
  description = "CIDR block for the public subnet in us-east-1b"
  default     = "10.0.2.0/24"
}

variable "private_subnet_cidr_a" {
  description = "CIDR block for the private subnet in us-east-1a"
  default     = "10.0.3.0/24"
}

variable "private_subnet_cidr_b" {
  description = "CIDR block for the private subnet in us-east-1b"
  default     = "10.0.4.0/24"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "ami_id" {
  description = "AMI ID for the EC2 instances"
  default     = "ami-0c55b159cbfafe1f0" # Amazon Linux 2 AMI for us-east-1
}

variable "key_name" {
  description = "Key name for EC2 instances"
  default     = "my-key"
}