#!/bin/bash

export STEAMAPPS_PATH="/media/vincent/dbcbf69d-8162-4768-976c-c7c5b5ace72b/SteamLibrary/steamapps"
export GES_PATH="/media/vincent/dbcbf69d-8162-4768-976c-c7c5b5ace72b/SteamLibrary/steamapps/sourcemods/gesource"

if [[ -d "$STEAMAPPS_PATH" && -d "$GES_PATH" ]]; then
  pushd "$STEAMAPPS_PATH/common/Source SDK Base 2013 Multiplayer/"

  #GAME_DEBUGGER=gdb LD_LIBRARY_PATH="$GES_PATH/bin" ./hl2.sh -game "$GES_PATH"
  LD_LIBRARY_PATH="$GES_PATH/bin" ./hl2.sh -game "$GES_PATH"

  popd
else
  echo "You need to define STEAMAPPS_PATH and GES_PATH to use this script!"
fi
