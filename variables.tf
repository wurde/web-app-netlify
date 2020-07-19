# Define input variables.
# https://www.terraform.io/docs/configuration/variables.html

variable "dist_dir" {
  type        = string
  description = "The distribution directory to serve via static asset host."
}

variable "repo_path" {
  type        = string
  description = "Path to your repo, typically username/reponame."
}

variable "command" {
  type        = string
  description = "Shell command to run before deployment, typically used to build the site."
  default     = ""
}
