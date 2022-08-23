terraform {
  backend "s3" {
    endpoint   = "storage.yandexcloud.net"
    bucket     = "terraform-rb"
    region     = "ru-central1"
    key        = "prod/terraform.tfstate"
    access_key = "YCAJETQ7PmoyMeI_ttTmirR9h"
    secret_key = "YCPq7LOBFMNN9TjwCVfzNIPV6ifNNaMcIpm62Qe5"

    skip_region_validation      = true
    skip_credentials_validation = true
  }
}
