# Define a Netlify site resource.

# https://www.terraform.io/docs/providers/netlify/r/netlify_site.html
resource "netlify_site" "main" {
  name = replace(var.repo_path, "/", "-")

  repo {
    deploy_key_id = netlify_deploy_key.main.id

    dir       = var.dist_dir
    repo_path = var.repo_path
    command   = var.command

    provider      = "github"
    repo_branch   = "master"
  }
}
