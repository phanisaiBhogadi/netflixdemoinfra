provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "one" {
count = 5
ami = "ami-0ddc798b3f1a5117e"
instance_type = "t2.medium"
key_name = "sunny"
vpc_security_group_ids = ["sg-0823fcdddbb23f068"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "nexus", "tomcat-1", "tomcat-2", "Monitoring server"]
}
