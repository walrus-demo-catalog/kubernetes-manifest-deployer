resource "kubectl_manifest" "manifest" {
  wait_for_rollout = false

  yaml_body = var.manifest
}