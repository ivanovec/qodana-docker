group "ruby" {
  targets = ["ruby2x", "ruby3x"]
}

target "ruby2x" {
  matrix = {
    version = ["6", "7"]
  }
  name = "ruby-base-2${version}-243"
  tags = [
    "registry.jetbrains.team/p/sa/containers/qodana:ruby-base-2.${version}-243"
  ]
  platforms = ["linux/amd64", "linux/arm64"]
  dockerfile = "ruby.Dockerfile"
  args = {
    RUBY_TAG = "2.${version}-slim-bullseye"
  }
}

target "ruby3x" {
  matrix = {
    version = ["0", "1", "2", "3", "4"]
  }
  name = "ruby-base-3${version}-243"
  tags = [
    "registry.jetbrains.team/p/sa/containers/qodana:ruby-base-3.${version}-243"
  ]
  platforms = ["linux/amd64", "linux/arm64"]
  dockerfile = "ruby.Dockerfile"
  args = {
    RUBY_TAG = "3.${version}-slim-bullseye"
  }
}