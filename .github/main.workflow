workflow "Auto docs" {
  on = "release"
  resolves = ["Jazzy docs"]
}

action "Jazzy docs" {
  uses = "nodes-vapor/github-actions.git/actions/jazzy-docs"
  secrets = [
    "GITHUB_TOKEN",
    "GH_USER",
    "GH_EMAIL",
  ]
}
