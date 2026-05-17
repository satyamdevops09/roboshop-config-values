variable "token" {}

variable "secret-mounts" {
  default={
    roboshop-dev={
      description="roboshop Project Dev Secrets"
    }
    roboshop-infra={
      description="roboshop Project infra Secrets"

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
    frontend={
      secret_mount= "roboshop-dev"
      kv={
        CATALOGUE_URL = "http://catalogue-dev.sdevops09.online:8080/",
        USER_URL = "http://user-dev.sdevops09.online:8080/",
        CART_URL = "http://cart-dev.sdevops09.online:8080/",
        SHIPPING_URL = "http://shipping-dev.sdevops09.online:8080/",
        PAYMENT_URL = "http://payment-dev.sdevops09.online:8080/",
        CATALOGUE_HOST = "catalogue-dev.sdevops09.online",
        CATALOGUE_PORT = "8080",
        USER_HOST      = "user-dev.sdevops09.online",
        USER_PORT      = "8080",
        CART_HOST      = "cart-dev.sdevops09.online",
        CART_PORT      = "8080",
        SHIPPING_HOST  = "shipping-dev.sdevops09.online",
        SHIPPING_PORT  = "8080",
        PAYMENT_HOST   = "payment-dev.sdevops09.online",
        PAYMENT_PORT   = "8080"


      }
    }
    catalogue={
      secret_mount= "roboshop-dev"
      kv={
        MONGO ="true" ,
        MONGO_URL= "mongodb://mongodb-dev.sdevops09.online:27017/catalogue",

      }
    }
    user={
      secret_mount= "roboshop-dev"
      kv={
        MONGO ="true",
        REDIS_URL ="redis://redies-dev.sdevops09.online:6379" ,
        MONGO_URL= "mongodb://mongodb-dev.sdevops09.online:27017/users",

      }
    }
    mysql={
      secret_mount= "roboshop-dev"
      kv={
        ROOT_PASSWORD ="RoboShop@1",
      }
    }
    rabbitmq={
      secret_mount= "roboshop-dev"
      kv={
        APP_USER ="roboshop",
        APP_PASSWORD ="roboshop123",
      }
    }
    shipping={
      secret_mount= "roboshop-dev"
      kv={
        CART_ENDPOINT ="cart-dev.sdevops09.online:8080",
        DB_HOST ="mysql-dev.sdevops09.online",
        DB_USER ="root",
        DB_PASS ="RoboShop@1",
      }
    }
    payment={
      secret_mount= "roboshop-dev"
      kv={
        CART_HOST ="cart-dev.sdevops09.online",
        CART_PORT =8080,
        USER_HOST ="user-dev.sdevops09.online",
        USER_PORT =8080,
        AMQP_HOST ="rabbitmq-dev.sdevops09.online",
        AMQP_PORT ="roboshop",
        AMQP_PASS ="roboshop123",
      }
    }
    ssh={
      secret_mount= "roboshop-infra"
      kv={
        username ="ec2-user",
        password ="DevOps321",

      }
    }

  }
}
