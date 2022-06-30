terraform {
  required_providers {
    heroku = {
      source = "heroku/heroku"
      version = "4.8.0"
    }
  }

  backend "remote" {
    organization = "rent-your-stuff"

    workspaces {
      name = "rent-your-stuff"
    }
  }
}

provider "heroku" {
  email = var.heroku_email
  api_key = var.heroku_api_key
}