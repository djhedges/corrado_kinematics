# VW Corrado Front Suspension Baseline (OEM Spindles)

## Hardware Configuration
- **Spindles / Uprights**: VW Corrado OEM VR6 Spindles (Wheel Bearing Housings)
- **Lower Ball Joints**: OEM Ball Joints
- **Control Arms**: Corrado VR6 "Plus" Lower Control Arms
- **Strut / Damper**: MacPherson Strut (Length: 47.25 cm / 472.5 mm from upper mount to lower clamp)
- **Outer Tie Rod**: OEM Tie Rod End
- **Wheels & Tires**: 15" Wheels, 5mm Wheel Spacers, 240mm Hoosier Slicks MS
- **Track Width**: 67.13 inches (1705.0 mm) -> Half-track: 852.5 mm
- **Wheelbase**: 97.2 inches (2468.9 mm)
- **Static Hub Height**: 11.5 inches (292.1 mm)
- **Center of Gravity**:
  - Longitudinal: 35.4 inches (899.2 mm) behind front axle (63.6% Front / 36.4% Rear)
  - Lateral: Centered (49.7% Left / 50.3% Right)
  - Vertical: 18.3 inches (464.8 mm) above ground
- **Vehicle Weight**: 2,516 lbs

## Kinematic Metrics (Design Condition)
- **Static Caster Angle**: $+10.61^\circ$
- **Kingpin Inclination (KPI)**: $5.12^\circ$
- **Scrub Radius**: $226.37\text{ mm}$
- **Mechanical Trail**: $69.86\text{ mm}$
- **Damper Motion Ratio**: $0.964$
- **Camber Gain**: $-0.0069^\circ/\text{mm}$ ($-0.069^\circ$ per 10mm bump)
- **Bump Steer Gradient**: $+0.0087^\circ/\text{mm}$ Toe-In

## Files in this Directory
- `corrado_geometry.yaml`: Fully documented geometry specification.
- `corrado_sweep.yaml`: Bump sweep configuration ($\pm 40\text{ mm}$).
- `corrado_sweep_results.csv`: 41-step solve results with full kinematics and Jacobians.
- `corrado_plot.png`: 4-view design condition plot (Front, Side, Top, Isometric).
- `corrado_sweep.gif`: Kinematic bump/rebound sweep animation.
