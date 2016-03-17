#!/bin/bash

SAVE_NAME="ourworld"
AUTOSAVE_INTERVAL="--autosave-interval 30"
AUTOSAVE_SLOTS="--autosave-slots 3"
DISABLED_COMMANDS="--disallow-commands"

EXEC_DIR="/factorio"
EXEC_BIN="${EXEC_DIR}/bin/x64/factorio"
EXEC_ARGS="${DISABLED_COMMANDS} ${AUTOSAVE_INTERVAL} ${AUTOSAVE_SLOTS}"

echo "# Factorio Server launcher start..."
# Check save map
if [ ! -f ${EXEC_DIR}/saves/${SAVE_NAME}.zip ]; then
    echo " - Create a new map: ${SAVE_NAME}"
    ${EXEC_BIN} --create ${SAVE_NAME}
else
    echo " - Using existting map: ${SAVE_NAME}"
fi

# Run server with args
${EXEC_BIN} --start-server ${SAVE_NAME} ${EXEC_ARGS} $@


