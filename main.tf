module "label" {
  source = "github.com/robc-io/terraform-null-label.git?ref=0.16.1"
  tags = {
    NetworkName = var.network_name
    Owner       = var.owner
    Terraform   = true
    VpcType     = "main"
  }

  environment = var.environment
  namespace   = var.namespace
  stage       = var.stage
}

resource "digitalocean_kubernetes_cluster" "this" {
  name    = var.cluster_name
  region  = var.zone
  version = var.do_k8s_version

  node_pool {
    name = "${var.cluster_name}-workers"
    size = var.worker_instance_type

    auto_scale = var.cluster_autoscale
    node_count = var.cluster_autoscale ? null : var.num_workers
    min_nodes  = var.cluster_autoscale ? var.cluster_autoscale_min_workers : null
    max_nodes  = var.cluster_autoscale ? var.cluster_autoscale_max_workers : null
  }
}