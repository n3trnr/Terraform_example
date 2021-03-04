resource "aws_instance" "natam-dev-ec2" {
    ami = "ami-0679ed5b895168efd"
    instance_type = "c5.large"
    subnet_id = "${aws_subnet.natam-dev-private-a.id}"
    
    vpc_security_group_ids = [
        "${aws_security_group.natam-dev-sg.id}"
    ]
    private_ip = "10.141.21.11"
	key_name = "natam-dev-key"
    count = 1
    tags = {
        Name = "natam-dev"
	    AutoONF = "TRUE"
    }
    associate_public_ip_address = false 
}

