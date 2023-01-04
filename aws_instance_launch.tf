variable "amiID" {
	default="ami-020916b60b78f7108"
}


resource "aws_instance" "server_OS" {
	ami=var.amiID
	instance_type="t2.micro"
	
}