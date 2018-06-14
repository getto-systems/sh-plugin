#!/bin/bash

sh_plugin(){
  local path
  local user
  local name

  if [ -z "$SH_PLUGIN_ROOT" ]; then
    echo "require setup: SH_PLUGIN_ROOT"
    return
  fi

  path=$1; shift

  user=$(basename $(dirname "$path"))
  name=$(basename "$path")
  name=${name%.git}

  mkdir -p $SH_PLUGIN_ROOT/$user
  if [ ! -d $SH_PLUGIN_ROOT/$user/$name ]; then
    git clone $path $SH_PLUGIN_ROOT/$user/$name
  fi

  PATH=$PATH:$SH_PLUGIN_ROOT/$user/$name/bin
}

sh_plugin_update(){
  local pwd
  local target

  if [ -z "$SH_PLUGIN_ROOT" ]; then
    echo "require setup: SH_PLUGIN_ROOT"
    return
  fi

  pwd=$(pwd)

  for target in $SH_PLUGIN_ROOT/*/*; do
    if [ -d "$target" ]; then
      cd $target
      git remote update --prune && git fetch --tags --prune && git checkout master && git pull
    fi
  done

  cd $pwd
}
