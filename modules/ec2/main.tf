resource "aws_instance" "roboshop" {
  ami           = var.ami
  instance_type = var.instance_type
  tags = {
    Name = "${var.name}-${var.environment}"
  }
  
}
resource "aws_route53_record" "record" {
  zone_id = var.zone_id
  name    = "${var.name}.${var.environment}.${var.zone_name}"
  type    = "A"
  ttl     = "300"
  records = [aws_instance.roboshop.public_ip]
  
}