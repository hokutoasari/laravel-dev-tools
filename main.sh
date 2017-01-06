#!/usr/bin/env bash

installed_composer() {
  which composer > /dev/null
  return $?
}

installed_npm() {
  which npm > /dev/null
  return $?
}

main() {
  ## verify composer, npm
  installed_composer || exit 1
  installed_npm || exit 1
}

main
