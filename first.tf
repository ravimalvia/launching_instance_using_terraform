

#manages use resources

resource "aws_instance" "os4" {
	#arguement 
	key_name= "clouduse11+0"
	ami=var.amiID
	instance_type="t2.micro" 
	security_groups=[ "allow_ssh_and_http" ]
	tags= {
		name=var.osName
	}
/*	
	connection {
		type="ssh"
		user="ec2-user"
		private_key=file("C:/Users/MALVI/OneDrive/Desktop/Arth/aws/clouduse11+0.pem")	
		host=aws_instance.os4.public_ip

	}

	provisioner "remote-exec" {
	inline = [
		"sudo yum install httpd -y",
		"sudo touch /var/www/html/index.html",
		"sudo echo 'Hello world' > /var/www/html/index.html",
		"sudo systemctl enable httpd --now",
		]
	
	}
*/

}

resource "aws_ebs_volume" "ebs_add" {
  		availability_zone = aws_instance.os4.availability_zone
 		size = 1
 	 	tags = {
   			 Name = "extra_vol"
 			}
		}




output "publicIP" {
	value= aws_instance.os4.public_ip
}
output "vol_size" {
	value= aws_instance.os4.instance_state
}
