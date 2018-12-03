workflow "confuscious pull request fail" {
  on = "pull_request"
  resolves = ["post message on fail"]
}

action "post message on fail" {
  uses = "vsoch/confucious-actions/pull_request_fail@master"
  secrets = ["GITHUB_TOKEN"]
}
