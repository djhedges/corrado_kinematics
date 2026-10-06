FROM debian:trixie-slim

# Install system dependencies and python
RUN apt-get update && apt-get install -y --no-install-recommends \
    python3 \
    python3-pip \
    python3-venv \
    python3-numpy \
    python3-scipy \
    python3-yaml \
    python3-matplotlib \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# Create virtual environment with system site packages enabled
ENV VIRTUAL_ENV=/opt/venv
RUN python3 -m venv --system-site-packages $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

# Install remaining python dependencies and suspension-explorer-core with [cli,viz]
WORKDIR /workspace
COPY suspension-explorer-core /workspace/suspension-explorer-core
RUN pip install --no-cache-dir \
    "pydantic>=2.0" \
    "typer>=0.19.2" \
    "pyarrow>=21.0.0" \
    "pyyaml>=6.0.2" \
    -e "/workspace/suspension-explorer-core[cli,viz]"

WORKDIR /workspace
CMD ["kinematics", "--help"]
