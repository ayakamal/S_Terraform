resource "aws_db_instance" "my_rds" {
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  name                 = "mydb"
  username             = "terraform_rds"
  password             = "123456"
  port                 = 5000
  #db_subnet_group_name = 
  #vpc_security_group_ids = 
  skip_final_snapshot  = true
}