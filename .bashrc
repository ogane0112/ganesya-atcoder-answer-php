#!/bin/bash

mkphp() {
  pwd=$(pwd)
  if [ -z "$1" ]; then
    echo "Usage: mkphp <filename>"
    return 1
  fi
  cp /workspace/template.php "$pwd/$1.php"
  echo "Created /workspace/$1.php from template"
}