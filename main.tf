resource "huaweicloud_cce_cluster_v3" "cce_cluster" {
  name                  = var.cluster_name
  cluster_type          = var.cluster_type
  flavor_id             = var.flavor_id
  vpc_id                = var.vpc_id
  subnet_id             = var.subnet_id
  container_network_cidr = var.container_network_cidr

  extend_param {
    cluster_external_ip = "auto"
  }
}

resource "huaweicloud_cce_node_v3" "cce_node" {
  count                 = var.node_count
  name                  = "my-cce-node-${count.index + 1}"
  cluster_id            = huaweicloud_cce_cluster_v3.cce_cluster.id
  flavor_id             = var.node_flavor_id
  os                    = var.node_os
  key_pair              = var.key_pair
  root_volume {
    size        = var.root_volume_size
    volumetype  = "SATA"
  }

  data_volumes {
    size        = var.data_volume_size
    volumetype  = "SATA"
  }

  billing_mode         = "postPaid"
  availability_zone    = var.availability_zone
  iptype               = "5_bgp"
  public_ip {
    bandwidth_size     = var.bandwidth_size
  }

  vpc_id               = var.vpc_id
  subnet_id            = var.subnet_id
}
