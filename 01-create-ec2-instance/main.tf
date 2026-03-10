resource "aws_instance" "basic_ec2_instance" {
  # To get the AMI ID, visit: https://ap-southeast-1.console.aws.amazon.com/ec2/home?region=ap-southeast-1#AMICatalog
  ami           = "ami-08d59269edddde222"
  instance_type = "t3.micro"

  tags = {
    Name = "MyFirstEC2Instance"
  }
}