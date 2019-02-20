action "documentation" {
  uses = "./action-documentation/"
}

workflow "Auto docs" {
  on = "release"
  resolves = ["./action-documentation"]
}

action "./action-documentation" {
  uses = "./action-documentation"
}
