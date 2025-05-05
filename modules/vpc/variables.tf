variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "public_subnets" {
  description = "List of public subnet CIDR blocks"
  type        = list(string)
}

variable "private_subnets" {
  description = "List of private subnet CIDR blocks"
  type        = list(string)
}

variable "region" {
  description = "The AWS region"
  type        = string
}

# Add the availability_zones variable
variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
}
