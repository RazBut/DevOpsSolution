provider "vault" {
  address = "http://127.0.0.1:8200"
}

data "vault_generic_secret" "github_token" {
  path = "secret/devops"
}

provider "github" {
  token = data.vault_generic_secret.github_token.data["github_api"]
  owner = "RazvanButnaru"
}

resource "github_repository" "create_repository" {
  name        = "TerraformRazvansRepo"
  description = "Creating repo with terraform"
  visibility = "public"
}
