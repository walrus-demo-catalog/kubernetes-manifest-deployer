output "manifest" {
  value = resource.kubectl_manifest.manifest.yaml_body_parsed
}