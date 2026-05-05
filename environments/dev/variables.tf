variable "aws_region" { 
    description = "AWS region where resources will be created" 
    type = string 
    default = "us-east-1" 
}

variable "instance_type" { 
    description = "Type of EC2 instance" 
    type = string 
    default = "t2.micro" 
}

variable "ami_id" { 
    description = "The AMI ID to use for the instance" 
    type = string # Example Ubuntu 22.04 AMI for us-east-1 
    default = "ami-0c7217cdde317cfec" 
}

variable "instance_name" { 
    description = "Value of the Name tag for the EC2 instance" 
    type = string 
    default = "ExampleAppServerInstance"
}