provider "aws" {
  region = "ap-south-1" # Singapore region
  access_key = "AKIA4WB7BXR6FRG2G4SX"
  secret_key = "00LxmcCMv247FPw/JycsLGcMvy18sTTVA4j2laYx"
}

resource "aws_instance" "example" {
  ami           = "ami-0dacd9d37849a9f38" # Replace with the SUSE Linux AMI ID
  instance_type = "t2.micro"
}

output "public_ip" {
  value = aws_instance.example.public_ip
}