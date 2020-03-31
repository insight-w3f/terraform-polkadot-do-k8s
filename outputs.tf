output "id" {
  description = "A unique ID that can be used to identify and reference a Kubernetes cluster"
  value       = digitalocean_kubernetes_cluster.this.id
}

output "cluster_subnet" {
  description = "The range of IP addresses in the overlay network of the Kubernetes cluster"
  value       = digitalocean_kubernetes_cluster.this.cluster_subnet
}

output "service_subnet" {
  description = "The range of assignable IP addresses for services running in the Kubernetes cluster"
  value       = digitalocean_kubernetes_cluster.this.service_subnet
}

output "public_ip" {
  description = "The public IPv4 address of the Kubernetes master node"
  value       = digitalocean_kubernetes_cluster.this.ipv4_address
}

output "endpoint" {
  description = "The base URL of the API server on the Kubernetes master node"
  value       = digitalocean_kubernetes_cluster.this.endpoint
}

output "kube_config" {
  description = "The full contents of the Kubernetes cluster's kubeconfig file"
  value       = digitalocean_kubernetes_cluster.this.kube_config.0.raw_config
}

output "cluster_ca_cert" {
  description = "The base64 encoded public certificate for the cluster's certificate authority"
  value       = digitalocean_kubernetes_cluster.this.kube_config.0.cluster_ca_certificate
}

output "cluster_client_key" {
  description = "The base64 encoded private key used by clients to access the cluster"
  value       = digitalocean_kubernetes_cluster.this.kube_config.0.client_key
}

output "cluster_client_certificate" {
  description = "The base64 encoded public certificate used by clients to access the cluster"
  value       = digitalocean_kubernetes_cluster.this.kube_config.0.client_certificate
}
