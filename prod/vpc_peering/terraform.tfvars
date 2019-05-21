terragrunt = {
  dependencies {
    paths = [
      "../jaws/global/backends",
      "../saws/global/backends",
      "../jaws/vpc",
      "../saws/vpc",
    ]
  }
}