terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.13.0"
    }
  }
}

provider "docker" {}

resource "docker_image" "nginx" {
  name = "nginx:latest"
}

resource "docker_image" "sonarr" {
  name = "linuxserver/sonarr:latest"
}

resource "docker_image" "radarr" {
  name = "ghcr.io/linuxserver/radarr:latest"
}

resource "docker_volume" "nginx_index" {
  name = "nginx_index"
}

resource "docker_volume" "radarr_config" {
    name = "radarr_config"
}

resource "docker_volume" "radarr_downloads" {
    name = "radarr_downloads"
}

resource "docker_volume" "radarr_movies" {
    name = "radarr_movies"
}

resource "docker_volume" "sonarr_config" {
  name = "sonarr_config"
}

resource "docker_volume" "sonarr_downloads" {
  name = "sonarr_downloads"
}

resource "docker_volume" "sonarr_tv" {
  name = "sonarr_tv"
}

resource "docker_container" "nginx" {
    image = "${docker_image.nginx.latest}"
    name = "nginx"
    restart = "always"
    depends_on = [docker_container.sonarr, docker_container.radarr]
    ports {
      internal = 80
      external = 8080
  }
    volumes {
      host_path      = "/home/igor/Documents/it-academy.by/10.Docker-compose_Terraform/nginx/"
      container_path = "/usr/share/nginx/html"
      read_only      = false
      
  }  
}

resource "docker_container" "sonarr" {
    image = "${docker_image.sonarr.latest}"
    name = "sonarr"
    restart = "unless-stopped"
    ports {
      internal = 8989
      external = 8989
  }
    volumes {
      volume_name    = docker_volume.sonarr_config.name
      host_path = "/home/vit/Work/10.Docker.Compose/sonarr/data"
      container_path = "/config"
      read_only      = false
  }
    volumes {
      volume_name    = docker_volume.sonarr_tv.name
      host_path = "/home/vit/Work/10.Docker.Compose/sonarr/tvseries"
      container_path = "/tv"
      read_only      = false
  }
    volumes {
      volume_name    = docker_volume.sonarr_downloads.name
      host_path = "/home/vit/Work/10.Docker.Compose/sonarr/downloadclient-downloads"
      container_path = "/downloads"
      read_only      = false
  }
}