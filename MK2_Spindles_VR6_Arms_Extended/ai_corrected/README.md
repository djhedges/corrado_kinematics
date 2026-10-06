# VW Corrado Front Suspension Baseline (AI Corrected)

## Hardware Configuration
- **Spindles / Uprights**: VW Mk2 Spindles (Wheel Bearing Housings)
- **Lower Ball Joints**: Extended Ball Joints (Roll Center Correction)
- **Control Arms**: Corrado VR6 "Plus" Lower Control Arms
- **Strut / Damper**: MacPherson Strut (Length: 47.25 cm / 472.5 mm from upper mount to lower clamp)
- **Outer Tie Rod**: 5mm Bump Steer Spacer
- **Wheels & Tires**: 15" Wheels, 5mm Wheel Spacers, 240mm Hoosier Slicks MS
- **Track Width**: 68.4 inches (1737.4 mm) -> Half-track: 868.7 mm
- **Wheelbase**: 97.2 inches (2468.9 mm)
- **Static Hub Height**: 11.5 inches (292.1 mm)
- **Center of Gravity**:
  - Longitudinal: 35.4 inches (899.2 mm) behind front axle (63.6% Front / 36.4% Rear)
  - Lateral: Centered (49.7% Left / 50.3% Right)
  - Vertical: 18.3 inches (464.8 mm) above ground
- **Vehicle Weight**: 2,516 lbs
- **Strut Top Span**: 113.0 cm (1130.0 mm cross-car distance between strut tops)

## Kinematic Metrics (Design Condition)

| Metric | Front Left (FL) | Front Right (FR) | Setup Target (README.md) |
| :--- | :---: | :---: | :---: |
| **Static Caster Angle** | $+9.20^\circ$ | $+9.20^\circ$ | $-9.2^\circ$ (rearward tilt) |
| **Static Camber (Ground)** | $-2.60^\circ$ | $-3.00^\circ$ | $-2.6^\circ$ (FL) / $-3.0^\circ$ (FR) |
| **Kingpin Inclination (KPI)** | $13.58^\circ$ | $13.98^\circ$ | — |
| **Scrub Radius** | $133.89\text{ mm}$ | $134.76\text{ mm}$ | — |
| **Mechanical Trail** | $49.82\text{ mm}$ | $49.74\text{ mm}$ | — |
| **Camber Gain** | $-0.0254^\circ/\text{mm}$ | $-0.0260^\circ/\text{mm}$ | — |
| **Bump Steer Gradient** | $+0.0334^\circ/\text{mm}$ Toe-In | $+0.0336^\circ/\text{mm}$ Toe-In | $+0.0338^\circ/\text{mm}$ Toe-In |

## Files in this Directory
- `corrado_geometry.yaml`: Full axle geometry specification with asymmetric FL/FR strut tops and camber.
- `corrado_sweep.yaml`: Bump sweep configuration for both corners (-40mm to +40mm).
- `corrado_sweep_results.csv`: 41-step solve results with full kinematics and Jacobians for left and right corners.
- `corrado_plot.png`: 4-view design condition axle plot (Front, Side, Top, Isometric).
- `corrado_sweep.gif`: Kinematic bump/rebound sweep animation of the front axle.
- `bump_steer_comparison.png`: Comparison plot of physical dial gauge measurements vs simulation curve.
