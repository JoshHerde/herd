#!/bin/bash
ROOT_DIR="$(git rev-parse --show-toplevel)"
EXAMPLE_DIR="$ROOT_DIR/examples"
echo $EXAMPLE_DIR

for filename in $EXAMPLE_DIR/*.herd; do
    /usr/bin/env \
    /usr/lib/jvm/java-11-openjdk-amd64/bin/java \
        -cp /home/jherd/.vscode-server/data/User/workspaceStorage/74afb89b072cc70a269c43c0d638d2bd/redhat.java/jdt_ws/lox_50e34ae4/bin \
        herd.Lox $filename
done