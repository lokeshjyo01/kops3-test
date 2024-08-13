resource "aws_route53_zone" "lkcloudtech" {
  name = "lkcloudtech.live"  # Change to your domain name
}

output "lkcloudtech" {
  value = "${aws_route53_zone.lkcloudtech.name_servers}"
  }
  
