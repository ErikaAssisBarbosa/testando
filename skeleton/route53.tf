data "aws_route53_zone" "goldnugget_hostedzone" {
  name = var.hostedzone_ns
}

data "kubernetes_service" "ingress_nginx" {
  metadata {
    name      = "ingress-nginx-controller"
    namespace = "ingress-nginx"
  }
  depends_on = [module.eks, helm_release.ingress_nginx]
}

resource "aws_route53_record" "ingress_lb_record" {
  zone_id = data.aws_route53_zone.goldnugget_hostedzone.id
  name    = "*.${var.hostedzone_ns}"
  type    = "CNAME"
  ttl     = "360"
  records = [data.kubernetes_service.ingress_nginx.status.0.load_balancer.0.ingress.0.hostname]
}
