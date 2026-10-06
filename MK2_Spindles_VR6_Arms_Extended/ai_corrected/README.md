# VW Corrado Front Suspension Baseline (AI Corrected)

## Hardware Configuration
- **Spindles / Uprights**: VW Mk2 Spindles (Wheel Bearing Housings)
- **Lower Ball Joints**: Extended Ball Joints (Roll Center Correction, Arms Level at $Z = 0.0\text{ mm}$)
- **Control Arms**: Corrado VR6 "Plus" Lower Control Arms (identical left to right, outer LCA $Z$ aligned with inner LCA pivot)
- **Strut / Damper**: MacPherson Strut (Length: 47.25 cm / 472.5 mm from upper mount to lower clamp)
- **Outer Tie Rod**: 5mm Bump Steer Spacer (outer tie rod point adjusted to align bump steer with physical dial gauge measurements)
- **Bump Steer Gauge**: Dial indicator spacing $L = 34.0\text{ cm} = 340.0\text{ mm}$ (13.39 inches)
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
| **Static Toe Angle** | $-0.150^\circ$ | $-0.150^\circ$ | $-1\text{ mm}$ strings on 15" rim ($-0.1504^\circ$) |
| **Kingpin Inclination (KPI)** | $13.71^\circ$ | $14.11^\circ$ | — |
| **Scrub Radius** | $132.73\text{ mm}$ | $133.56\text{ mm}$ | — |
| **Mechanical Trail** | $50.90\text{ mm}$ | $50.82\text{ mm}$ | — |
| **Camber Gain** | $-0.0243^\circ/\text{mm}$ | $-0.0248^\circ/\text{mm}$ | — |
| **Bump Steer Gradient** | $+0.0310^\circ/\text{mm}$ Toe-In | $+0.0311^\circ/\text{mm}$ Toe-In | $+0.0308^\circ/\text{mm}$ Toe-In ($L = 34\text{ cm}$) |

## Geometry Corrections & Alignment Notes
1. **Level Lower Control Arms:** The lower control arms were measured and aligned level at design ride height, setting `lower_wishbone_outboard` $Z = 0.0\text{ mm}$ to match the subframe inner pivot height (`lower_wishbone_inboard_front` $Z = 0.0\text{ mm}$).
2. **Symmetric Outer LCA:** Outer LCA points are identical left to right at $(X = 19.0\text{ mm}, Y = \pm 720.5\text{ mm}, Z = 0.0\text{ mm})$.
3. **Outer Tie Rod Adjustment:** Using the 34 cm dial gauge spacing from physical bump steer measurements, the outer tie rod was adjusted ($X = -128.27\text{ mm}, Y = \pm 678.55\text{ mm}, Z = 44.33\text{ mm}$), moving primarily along the longitudinal $X$ axis (-23.27 mm) to match the measured bump steer curve within 1% while strictly preserving the high-accuracy $Z$ height measurement (+0.33 mm).
4. **Static Toe:** Adjusted outer spindle axis point to accurately reflect the $-1\text{ mm}$ toe strings measurement ($-0.1504^\circ$ static toe-out) across the 15" rim.

## Files in this Directory
- `corrado_geometry.yaml`: Full axle geometry specification with level LCA arms and corrected outer tie rod hardpoints.
- `corrado_sweep.yaml`: Bump sweep configuration for both corners (-40mm to +40mm).
- `corrado_sweep_results.csv`: 41-step solve results with full kinematics and Jacobians for left and right corners.
- `corrado_plot.png`: 4-view design condition axle plot (Front, Side, Top, Isometric).
- `corrado_sweep.gif`: Kinematic bump/rebound sweep animation of the front axle.
- `bump_steer_comparison.png`: Comparison plot of physical dial gauge measurements ($L = 34\text{ cm}$) vs simulation curve.
