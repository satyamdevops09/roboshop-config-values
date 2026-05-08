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
        REDIS_HOST = "redis-dev.sdevops09.online",
        CATALOGUE_HOST = "catalogue-dev.sdevops09.online",
        CATALOGUE_PORT=8080
      }
    }
  }
}