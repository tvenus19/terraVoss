Terraform VPC Module
Overview
This Terraform module provisions a VPC in AWS. It creates public and private subnets, sets up a NAT gateway, and allows for a single NAT gateway to save on costs during demos. This module also tags all the subnets and the VPC itself.

Prerequisites
Terraform >= 1.0
AWS CLI
An AWS account and IAM permissions to create VPC resources
Variables
There are several files containing variables:

c2-generic-variables.tf: Generic variables like AWS region, environment, and business division.
c3-01-vpc-variables.tf: Specific variables for the VPC like name, CIDR block, and subnet information.
Each variable has a description and a default value.

Overriding Variables
You can override variables by using a terraform.tfvars or a *.auto.tfvars file. Examples are provided in terraform.tfvars and vpc.auto.tfvars.

Locals
Local values are set up in c3-local-values.tf for easier referencing in other parts of the module.

Outputs
The module will produce the following outputs which can be queried to get information about the resources that were created:

vpc_id: The ID of the VPC
vpc_cidr_block: The CIDR block of the VPC
private_subnets: List of IDs of private subnets
public_subnets: List of IDs of public subnets
nat_public_ips: List of public Elastic IPs created for AWS NAT Gateway
azs: A list of availability zones specified as arguments to this module
Outputs are defined in c4-03-vpc-outputs.tf.

Usage
Clone this repository.
Run terraform init.
Modify the variables as needed, or override them using terraform.tfvars or *.auto.tfvars.
Run terraform plan to see the changes that will be made.
Run terraform apply to apply the changes.
For more details on the individual settings and variables, refer to the inline comments in each .tf file.

Versioning
This module has been tested on Terraform 1.0 and uses AWS provider version ~> 3.0.