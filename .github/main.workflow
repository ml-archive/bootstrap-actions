action "documentation" {
  uses = "./action-documentation/"
}

workflow "Auto docs" {
  on = "release"
  resolves = ["./action-documentation"]
}

action "./action-documentation" {
  uses = "./action-documentation"
  secrets = [
    "GITHUB_TOKEN",
    "GH_USER",
    "GH_EMAIL",
  ]
}
