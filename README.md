# P-animation

[![License: AGPL v3](https://img.shields.io/badge/License-AGPL_v3-blue.svg)](LICENSE)
[![Platform: Windows](https://img.shields.io/badge/Platform-Windows-0078D6.svg?logo=windows&logoColor=white)](#)

A classic 2D graphics simulation built using Free Pascal and the Lazarus IDE. The application generates a window containing multiple shapes that bounce around the screen, colliding with the window boundaries and deflecting off each other.

---

## Features

- **Lazarus GUI**: Fully native UI form containing a pre-defined array of six `TShape` objects.
- **Physics Simulation**: Uses a `TTimer` clock to increment X and Y coordinates simulating continuous motion.
- **Collision Detection**: Detects screen edge boundary violations (`ClientWidth` and `ClientHeight`) to reverse velocities, and utilizes `BoundsRect.IntersectsWith` to compute intersection collisions between the active shapes.

---

## Quick Start

1. Clone or download the repository.
2. Install the **Lazarus IDE** (which includes Free Pascal).
3. Open `project1.lpi` in Lazarus.
4. Click **Run** (F9) to compile and launch the executable.

---

## Configuration Details

The application is standalone and does not require external configs. At initialization, the script uses `Randomize` and `Random(5) + 1` to ensure the 6 shapes begin moving at unpredictable angles and speeds.

---

## Usage Guidelines

- Simply run the compiled `.exe` or run the program via Lazarus.
- A window will appear with 6 graphical objects.
- Watch as they bounce dynamically off the window borders and deflect off of one another endlessly based on the timer interval!

---

## Technical Documentation

For developers interested in directory structures, code architecture, or compilation guidelines, please refer to the **[Documentation.md](Documentation.md)** file.

---

## License

This project is licensed under the **GNU Affero General Public License Version 3 (AGPLv3)**. See the LICENSE file for details.
