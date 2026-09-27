#!/bin/bash

go get -tool golang.org/x/mobile/cmd/gobind@v0.0.0-20260821190718-4776eadac327 || true

CGO_LDFLAGS="-Wl,-z,max-page-size=16384" gomobile bind -v -androidapi 21 -trimpath -ldflags="-s -buildid=" -tags="with_clash" "github.com/exclavenetwork/libexclavecore" || exit 1

proj=../../app/libs
if [ -d  ]; then
  cp -vf libexclavecore.aar 
fi
