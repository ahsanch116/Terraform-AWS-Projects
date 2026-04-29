variable "region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "The environment to deploy resources in (e.g., dev, staging, prod)"
  type        = string
  default     = "prod"

}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "The CIDR block for the public subnet"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]

}

variable "private_subnet_cider" {
  description = "The CIDR block for the private subnet"
  type        = list(string)
  default     = ["10.0.11.0/24", "10.0.12.0/24"]

}

variable "public_subnet_count" {
  description = "The number of public subnets to create"
  type        = number
  default     = 2
}

variable "private_subnet_count" {
  description = "The number of private subnets to create"
  type        = number
  default     = 2
}

variable "availability_zone" {
  description = "The availability zone to deploy resources in"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}

variable "ami_id" {
  description = "The AMI ID to use for EC2 instances"
  type        = string
  default     = "ami-0ff8a91507f77f867"
}

variable "instance_type" {
  description = "The instance type to use for EC2 instances"
  type        = string
  default     = "t2.micro"

}

variable "desired_capacity" {
  description = "The desired capacity for the Auto Scaling Group"
  type        = number
  default     = 2
}

variable "max_size" {
  description = "The maximum size for the Auto Scaling Group"
  type        = number
  default     = 5
}

variable "min_size" {
  description = "The minimum size for the Auto Scaling Group"
  type        = number
  default     = 1
}

variable "s3_bucket" {
  description = "The name of the S3 bucket to create"
  type        = string
  default     = "my-terraform-bucket-test"

}