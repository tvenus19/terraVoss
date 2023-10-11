#AWS Region
variable "aws_region" {
  description = "Region which will be used for the VPC"
  type = string
  default = "us-east-1"
}

#Environment variable
variable "environment" {
  description = "Environment Variable used as a prefix"
  type = string
  default = "dev"
}

#Business division
variable "business_division" {
  description = "Business division in a large organization where this Infra is maintained"
  type = string
  default = "SAP"
}
