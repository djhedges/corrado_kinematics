#!/usr/bin/env bash
set -euo pipefail

IMAGE_NAME="corrado-kinematics:latest"

echo "Building container image: ${IMAGE_NAME}..."
podman build -t "${IMAGE_NAME}" .

echo "Successfully built ${IMAGE_NAME}."
