#!/usr/bin/env bash
set -euo pipefail

IMAGE_NAME="corrado-kinematics:latest"

# Ensure image exists or build if missing
if ! podman image exists "${IMAGE_NAME}" && ! podman image exists "localhost/${IMAGE_NAME}"; then
  echo "Image ${IMAGE_NAME} not found. Building..."
  ./build.sh
fi

# Prefer localhost/${IMAGE_NAME} if present, or ${IMAGE_NAME}
TARGET_IMAGE="${IMAGE_NAME}"
if podman image exists "localhost/${IMAGE_NAME}"; then
  TARGET_IMAGE="localhost/${IMAGE_NAME}"
fi

# Default to kinematics --help if no arguments provided
if [ $# -eq 0 ]; then
  set -- kinematics --help
fi

exec podman run \
  --network=none \
  --runtime=runsc \
  --runtime-flag=ignore-cgroups \
  --runtime-flag=network=none \
  --rm \
  -v "$(pwd):/workspace:Z" \
  "${TARGET_IMAGE}" \
  "$@"
