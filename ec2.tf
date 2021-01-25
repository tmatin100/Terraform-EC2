resource "aws_instance" "Jenkins" {
    ami = "ami-0885b1f6bd170450c"
    instance_type = var.instancetype
    security_groups = ["tmatin"]
    key_name = "WDL"
    count = 3
    tags = {
      Name = element(var.tags,count.index)
   }
    /*provisioner "remote-exec" {
      inline = [
         "yum update -y",
         "sudo yum install openjdk-8-jdk -y",
         " sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
  sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
         "sudo yum update -y",
         "sudo yum install jenkins -y",
         "sudo systemctl start jenkins",
         "sudo systemctl enable jenkins" ]
       connection {
        type = "ssh"
        user = "ubuntu"
        key_name = "WDL"
        host = self.public_ip
    } */
  }
