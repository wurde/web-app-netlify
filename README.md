# Web Application

Terraform module for deploying a web application to Netlify.
This module assumes an app deployed using pre-rendered
static assets distributed via global content delivery
network.

## Consider this first

Prefer a managed solution over custom code. Before exploring
the Terraform option, consider the alternatives that'll
save time and money. Consider these solutions first:

- [Firebase](https://firebase.google.com) by Google.
- [Amplify](https://aws.amazon.com/amplify) by AWS.
- [Netlify](https://www.netlify.com)
- [GitHub Pages](https://pages.github.com)

Reasons why this module is a good candidate:

- Infrastructure is already managed by Terraform.
- Requirement for a cloud-agnostic IaC solution.

## Getting started

Example usage within a Terraform configuration:

```terraform
module "static-website" {
  source = "github.com/wurde/web-app-netlify"

  dist_dir  = "./dist"
  repo_path = "username/reponame"
}
```

Next run `terraform apply`. Or automate via CI/CD pipelines
(GitHub Actions?). Be sure to set the `NETLIFY_TOKEN`
environment variable.

## Pricing Estimate

**0 dollars a month.**

## Why Terraform?

Terraform enables Infrastructure as Code.
[Learn more about it here](https://www.terraform.io).

## License

This project is __FREE__ to use, reuse, remix, and resell.
This is made possible by the [MIT license](/LICENSE).
