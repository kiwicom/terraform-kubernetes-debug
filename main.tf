resource "kubernetes_deployment" "kw_debug" {
  metadata {
    namespace = var.namespace
    name      = var.name
  }

  spec {
    replicas = 1

    selector {
      match_labels = {
        app = var.name
      }
    }

    template {
      metadata {
        labels = {
          app = var.name
        }
      }

      spec {
        image_pull_secrets {
          name = var.image_pull_secrets_name
        }
        container {
          image = "registry.skypicker.com:5005/platform/kw-debug:${var.container_version}"
          name  = var.name

          resources {
            limits {
              cpu    = "0"
              memory = "0"
            }
            requests {
              cpu    = "0"
              memory = "0"
            }
          }

          command = [
            "sh",
            "-c",
            "while sleep 5; do :; done"
          ]
        }
      }
    }
  }
}
