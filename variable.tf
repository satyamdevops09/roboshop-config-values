variable "token" {}

variable "secret-mounts" {
  default={
    roboshop-dev={
      description="roboshop Project Dev Secrets"
    }
  }
}

variable "secrets" {
  default ={
    cart={
      secret_mount= "roboshop-dev"
      kv={
        zip = "zap"
        foo = "bar"
      }
    }
  }
}