resource "aws_iam_server_certificate" "sv_server_cert" {
  name             = "sv-server-cert"
  certificate_body = file("../cert/sv-aws-cert.cer")
  private_key      = file("../cert/sv-aws-private-key.pem")

  lifecycle {
    create_before_destroy = true
  }
}