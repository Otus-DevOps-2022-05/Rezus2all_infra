terraform {
  backend "s3" {
    endpoint   = "storage.yandexcloud.net"
    bucket     = "terraform-rb"
    region     = "ru-central1"
    key        = "stage/terraform.tfstate"
    access_key = "YCAJE2OyTLQWC05A52nAMeIyM"
    secret_key = "YCPHbdOoNgo4UgWzRCZCcnJY6Q6WUubWWOSfP2tP"

    skip_region_validation      = true
    skip_credentials_validation = true
  }
}
