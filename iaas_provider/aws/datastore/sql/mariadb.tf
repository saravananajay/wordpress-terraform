resource "aws_db_instance" "wp_db" {
  allocated_storage    = 10
  storage_type         = "gp2"
  engine               = "mariadb"
  engine_version       = "10.2"
  instance_class       = "db.t2.micro"
  name                 = "wp_db"
  username             = "wp_db_user"
  password             = "wp_db_pass"
  parameter_group_name = "default.mysql10.2"

  # list of security groups for the instance
  security_groups = [
    "${aws_security_group.wp_db_security_group.name}",
  ]
}
