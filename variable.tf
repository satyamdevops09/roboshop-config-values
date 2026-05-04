variable "token" {}

variable "secret-mounts" {
  default={
    roboshop-dev={
      description="roboshop Project Dev Secrets"
    }
  }
}