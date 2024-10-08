# vpc variable
variable "vpc_cidr" {
  default = "10.0.0.0/16"
  description = "vpc cidr block"
  type = string
}

variable "public_subnet_az1_cidr" {
  default = "10.0.0.0/24"
  description = "public subnet az1 cidr block"
  type = string
}

variable "public_subnet_az2_cidr" {
  default = "10.0.1.0/24"
  description = "public subnet az2 cidr block"
  type = string
}

variable "private_app_subnet_az1_cidr" {
  default = "10.0.2.0/24"
  description = "private app subnet az1 cidr block"
  type = string
}

variable "private_app_subnet_az2_cidr" {
  default = "10.0.3.0/24"
  description = "private app subnet az2 cidr block"
  type = string
}

variable "private_data_subnet_az1_cidr" {
  default = "10.0.4.0/24"
  description = "private data subnet az1 cidr block"
  type = string
}

variable "private_data_subnet_az2_cidr" {
  default = "10.0.5.0/24"
  description = "private data subnet az2 cidr block"
  type = string
}

# security groups variable
variable "ssh_location" {
  default = "0.0.0.0/0"
  description = "the ip address that can ssh into the ec2 instances"
  type = string
}

# rds variables
variable "database_snapshot_identifier" {
  default = "arn:aws:rds:us-east-1:499930062720:snapshot:shopwise"
  description = "the database snapshort arn"
  type = string
}

variable "database_instance_class" {
  default = "db.t3.micro"
  description = "the database instance type"
  type = string
}

variable "database_instance_identifier" {
  default = "database-rdsdb"
  description = "the database instance identifier"
  type = string
}

variable "multi_az_deployment" {
  default = false
  description = "create a standby db instance"
  type = bool
}

#alb variables
variable "ssl_certificate_arn" {
  default = "arn:aws:acm:us-east-1:499930062720:certificate/e597bbe0-9871-4b33-8f4e-9c4a4fa575f5"
  description = "ssl certificate arn"
  type = string
}

#SNS variable
variable "operator_email" {
  default = "eamuzain@gmail.com"
  description = "a valid email address"
  type = string
}

#ASG variable
variable "launch_template_name" {
  default = "dev_launch_template"
  description = "name of launch template"
  type = string
}

variable "ec2_image_id" {
  default = "ami-09feca7920285fc91"
  description = "id of ami"
  type = string
}

variable "ec2_instance_type" {
  default = "t2.micro"
  description = "ec2 instance type"
  type = string
}

variable "ec2_key_pair_name" {
  default = "ec2key"
  description = "name of ec2 key pair"
  type = string
}

#Route 53 variables
 variable "domain_name" {
  default = "eamfresh.com"
  description = "domain name"
  type = string
}

 variable "record_name" {
  default = "www"
  description = "sub domain name"
  type = string
}