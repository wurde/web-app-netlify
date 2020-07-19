# Configure resources.

module "netlify" {
  source = "./src/netlify"

  dist_dir  = var.dist_dir
  repo_path = var.repo_path
  command   = var.command
}
