#VPC Input variables

#VPC name
variable "vpc_name" {
  description = "VPC Name"
  type = string
  default = "myvpc"
  }

#VPC CIDR Block
variable "vpc_cidr_block" {
  description = "VPC CIDR Block"
  type = string
  default = "10.0.0.0/16"
}

#VPC Availability Zones
variable "vpc_availability_zones" {
  description = "The AZ for the VPC"
  type = list(string)
  default = [ "us-east-1a", "us-east-1b" ]
}

#VPC Public Subnets
variable "vpc_public_subnets" {
  description = "Public subnets for the VPC"
  type = list(string)
  default = [ "10.0.101.0/24", "10.0.102.0/24" ]
}

#VPC Private Subnets
variable "vpc_private_subnets" {
  description = "Private subnets for the VPC"
  type = list(string)
  default = [ "10.0.1.0/24", "10.0.2.0/24" ]
}

#DB subnets
variable "vpc_database_subnets" {
  description = "Database subnets for the VPC"
  type = list(string)
  default = [ "10.0.151.0/24", "10.0.152.0/24" ]
}

#VPC Create DB subnet group
variable "vpc_create_database_subnet_group" {
  description = "Create a subnet group for the DBs"
  type = bool
  default = true
}

# VPC Create Database Subnet Route Table
variable "vpc_create_database_subnet_route_table" {
  description = "VPC Create Database Subnet Route Table"
  type = bool
  default = true   
}

  
# VPC Enable NAT Gateway 
variable "vpc_enable_nat_gateway" {
  description = "Enable NAT Gateways for Private Subnets Outbound Communication"
  type = bool
  default = true  
}

# VPC Single NAT Gateway
variable "vpc_single_nat_gateway" {
  description = "Enable only single NAT Gateway in one Availability Zone to save costs during our demos"
  type = bool
  default = true
}