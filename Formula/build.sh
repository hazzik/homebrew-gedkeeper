#!/bin/bash

set -e

echo "Building GEDKeeper3..."

cd projects/GKv3

dotnet build GEDKeeper3.sln -c=Release -p:Platform=MacOS

cd -

echo "Build completed!"
