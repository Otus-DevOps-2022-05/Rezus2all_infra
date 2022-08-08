terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.13"
}

provider "yandex" {
  token     = "AQAAAAA1uF4xAATuwV1LwguCJ0IOsS7F53Jd7YM"
  cloud_id  = "b1gikqk7igq3r6fauv3e"
  folder_id = "b1gn3qkiobqao5rviv11"
  zone      = "ru-central1-a"
}

resource "yandex_compute_instance" "app" {
  name = "reddit-app"

  metadata = {
  ssh-keys = "ubuntu:${file("~/.ssh/yc.pub")}"
  }

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      # Указать id образа созданного в предыдущем домашем задании
      image_id = "fd8emgiea78qnr3u65rr"
    }
  }

  network_interface {
    # Указан id подсети default-ru-central1-a
    subnet_id = "e9bveo7053lg65h96cqc"
    nat       = true
  }
}
