workflow "Auto docs" {
  on = "release"
  resolves = ["Jazzy docs"]
}

action "Jazzy docs" {
  uses = "https://github.com/nodes-vapor/github-actions.git/actions/jazzy-docs"
  secrets = [
    "GITHUB_TOKEN",
    "GH_USER",
    "GH_EMAIL",
  ]
}
