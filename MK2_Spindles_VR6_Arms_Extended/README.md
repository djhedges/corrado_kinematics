# VW Corrado Front Suspension Baseline

## Hardware Configuration
- **Spindles / Uprights**: VW Mk2 Spindles (Wheel Bearing Housings)
- **Lower Ball Joints**: Extended Ball Joints (Roll Center Correction)
- **Control Arms**: Corrado VR6 "Plus" Lower Control Arms
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

## Kinematic Metrics (Design Condition)
- **Static Caster Angle**: $+9.76^\circ$
- **Kingpin Inclination (KPI)**: $13.78^\circ$
- **Scrub Radius**: $121.39\text{ mm}$
- **Mechanical Trail**: $52.00\text{ mm}$
- **Damper Motion Ratio**: $0.892$
- **Camber Gain**: $-0.026^\circ/\text{mm}$ ($-0.26^\circ$ per 10mm bump)
- **Bump Steer Gradient**: $+0.0338^\circ/\text{mm}$ Toe-In (approximately $0.185"$ on 12.2" gauge plate per inch bump)

## Files in this Directory
- `corrado_geometry.yaml`: Fully documented geometry specification.
- `corrado_sweep.yaml`: Bump sweep configuration.
- `corrado_sweep_results.csv`: 41-step solve results with full kinematics and Jacobians.
- `corrado_plot.png`: 4-view design condition plot (Front, Side, Top, Isometric).
- `corrado_sweep.gif`: Kinematic bump/rebound sweep animation.
- `bump_steer_comparison.png`: Comparison plot of physical dial gauge measurements vs simulation curve.
