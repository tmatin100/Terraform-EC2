resource "aws_instance" "Jenkins" {
    ami = "ami-0885b1f6bd170450c"
    instance_type = var.instancetype
    security_groups = ["tmatin"]
    key_name = "WDL"
    count = 3
    tags = {
      Name = element(var.tags,count.index)
   }
}
    
