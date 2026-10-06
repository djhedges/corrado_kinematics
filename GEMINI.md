# Corrado Kinematics Simulation Environment

## Sandbox & Container Execution

Simulations run in a gVisor (`runsc`) sandbox with Podman using rootless isolation and network disabled.

### Helper Scripts

- **`./build.sh`**: Builds the Podman container image (`corrado-kinematics:latest`) from `Dockerfile`.
- **`./run.sh [command...]`**: Runs commands inside the gVisor sandbox container. Automatically mounts the workspace to `/workspace:Z`.

### Common Commands

- **Display help**:
  ```bash
  ./run.sh
  # or
  ./run.sh kinematics --help
  ```

- **Visualize suspension geometry**:
  ```bash
  ./run.sh kinematics visualize \
    --geometry=MK2_Spindles_VR6_Arms_Extended/corrado_geometry.yaml \
    --output=MK2_Spindles_VR6_Arms_Extended/corrado_plot.png
  ```

- **Run bump/rebound sweep**:
  ```bash
  ./run.sh kinematics sweep \
    --geometry=MK2_Spindles_VR6_Arms_Extended/corrado_geometry.yaml \
    --sweep=MK2_Spindles_VR6_Arms_Extended/corrado_sweep.yaml \
    --out=MK2_Spindles_VR6_Arms_Extended/corrado_sweep_results.csv \
    --animation-out=MK2_Spindles_VR6_Arms_Extended/corrado_sweep.gif
  ```

- **Execute Python code/scripts in gVisor**:
  ```bash
  ./run.sh python3 -c "import kinematics; print('Kinematics loaded successfully')"
  ```

---

## Hardware Configurations & Data

- **`MK2_Spindles_VR6_Arms_Extended/`**: Contains files related to the Corrado with stock OEM control arms, MK2 spindles, and extended ball joints.
- **`Corrado Kinematic Measurements.ods`**: Contains raw physical measurements used to build `corrado_geometry.yaml`.
