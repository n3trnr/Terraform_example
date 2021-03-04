resource "aws_instance" "natam-prd-ec2" {
    ami = "ami-0679ed5b895168efd"
    instance_type = "c5.large"
    subnet_id = "${aws_subnet.natam-prd-private-a.id}"
   
    vpc_security_group_ids = [
        "${aws_security_group.natam-prd-sg.id}"
    ]
    private_ip = "10.41.21.11"
	key_name = "natam-prd-key"
    count = 1
    tags = {
        Name = "natam-prd"
	    AutoONF = "TRUE"
    }
    associate_public_ip_address = false 
}

