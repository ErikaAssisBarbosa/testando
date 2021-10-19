resource "aws_security_group" "name_prefix_one" {
  name_prefix = ${{values.name_prefix_one}}
  vpc_id      = module.vpc.vpc_id

  ingress {
    from_port = ${{values.from_port_one}}
    to_port   = ${{values.to_port_one}}
    protocol  = "tcp"

    cidr_blocks = [
      ${{values.cidr_security_group_one}}
    ]
  }
}

resource "aws_security_group" "name_prefix_two" {
  name_prefix = ${{values.name_prefix_two}}
  vpc_id      = module.vpc.vpc_id

  ingress {
    from_port = ${{values.from_port_two}}
    to_port   = ${{values.to_port_two}}
    protocol  = "tcp"

    cidr_blocks = [
      ${{values.cidr_security_group_two}}
    ]
  }
}

/*resource "aws_security_group" "all_worker_mgmt" {
  name_prefix = "all_worker_management"
  vpc_id      = module.vpc.vpc_id

  ingress {
    from_port = 22
    to_port   = 22
    protocol  = "tcp"

    cidr_blocks = [
      "10.0.0.0/8",
      "172.16.0.0/12",
      "192.168.0.0/16",
    ]
  }
}*/
