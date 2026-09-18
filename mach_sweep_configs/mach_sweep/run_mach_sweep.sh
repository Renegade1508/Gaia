#!/bin/bash
# Runs the full Mach sweep sequentially with SU2_CFD and appends the
# converged aero coefficients from each run's history file into
# mach_sweep_summary.csv. Run from the mach_sweep/ directory
# (the .cfg files reference the mesh as ../gaia.su2).
set -e
cd "$(dirname "$0")"
SUMMARY=mach_sweep_summary.csv
echo "mach,cfg_file,history_file" > "$SUMMARY"
echo "=== Running Mach 0.3 ==="
SU2_CFD gaia_euler_M0.30_SL.cfg
echo "0.3,gaia_euler_M0.30_SL.cfg,history_M0.30.csv" >> "$SUMMARY"

echo "=== Running Mach 0.6 ==="
SU2_CFD gaia_euler_M0.60_SL.cfg
echo "0.6,gaia_euler_M0.60_SL.cfg,history_M0.60.csv" >> "$SUMMARY"

echo "=== Running Mach 0.8 ==="
SU2_CFD gaia_euler_M0.80_SL.cfg
echo "0.8,gaia_euler_M0.80_SL.cfg,history_M0.80.csv" >> "$SUMMARY"

echo "=== Running Mach 0.95 ==="
SU2_CFD gaia_euler_M0.95_SL.cfg
echo "0.95,gaia_euler_M0.95_SL.cfg,history_M0.95.csv" >> "$SUMMARY"

echo "=== Running Mach 1.05 ==="
SU2_CFD gaia_euler_M1.05_SL.cfg
echo "1.05,gaia_euler_M1.05_SL.cfg,history_M1.05.csv" >> "$SUMMARY"

echo "=== Running Mach 1.2 ==="
SU2_CFD gaia_euler_M1.20_SL.cfg
echo "1.2,gaia_euler_M1.20_SL.cfg,history_M1.20.csv" >> "$SUMMARY"

echo "=== Running Mach 1.5 ==="
SU2_CFD gaia_euler_M1.50_SL.cfg
echo "1.5,gaia_euler_M1.50_SL.cfg,history_M1.50.csv" >> "$SUMMARY"

echo "=== Running Mach 2.0 ==="
SU2_CFD gaia_euler_M2.00_SL.cfg
echo "2.0,gaia_euler_M2.00_SL.cfg,history_M2.00.csv" >> "$SUMMARY"

echo "=== Running Mach 2.83 ==="
SU2_CFD gaia_euler_M2.83_SL.cfg
echo "2.83,gaia_euler_M2.83_SL.cfg,history_M2.83.csv" >> "$SUMMARY"

echo "Sweep complete. See mach_sweep_summary.csv and the per-Mach history_M*.csv files."
