variable "manifest" {
  type        = string
  description = "The manifest YAML to apply to kubernetes, only one K8s resource object is supported"
  default     = <<YAML
apiVersion: apps/v1
kind: Deployment
metadata:
  labels:
    app: nginx
  name: nginx
  namespace: default
spec:
  replicas: 2
  selector:
    matchLabels:
      app: nginx
  strategy: {}
  template:
    metadata:
      labels:
        app: nginx
    spec:
      containers:
      - image: nginx
        name: nginx
        resources: {}
YAML
}