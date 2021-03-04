resource "aws_instance" "naver-dev-ec2" {
    ami = "${var.naver_linux}"
    instance_type = "t3.large"
    subnet_id = "subnet-0106c8655a00c3c33"
    vpc_security_group_ids = [
        "${aws_security_group.naver-dev-sg.id}"
    ]
	key_name = "rf-b2c-dev"
    count = 1
    tags {
        Name = "naver-dev"
	AutoONF = "TRUE"
    }
    associate_public_ip_address = false 
}

사용자 지정 TCP	TCP	8080	210.206.58.90/32	natam_reis_fnd, refine-office
사용자 지정 TCP	TCP	8080	211.60.240.136/32	natam_reis_fnd, refine-office
사용자 지정 TCP	TCP	8080	1.241.20.52/32	12 natam