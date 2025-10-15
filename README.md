# 📊 Signals and Systems Fundamentals Implementation (MATLAB)

This repository contains a series of three comprehensive computer-based exercises for the **Signals and Systems** course. All simulations, function implementations, and visualizations are performed using MATLAB, showcasing proficiency in applying theoretical concepts to practical signal processing problems.

## 🧠 Core Concepts Implemented

* **Time Domain Analysis:** Time Shifting, Time Scaling, and Even/Odd Decomposition.
* **Convolution:** Custom implementations of Discrete-Time Convolution using Direct Summation and Matrix Anti-Diagonal methods. Verification of the Impulse Sifting Property.
* **Fourier Series (FS):** Implementation of both **Discrete Fourier Series (DFS)** and **Continuous-Time Fourier Series (CTFS)** using symbolic integration.
* **Fourier Transform (FT):** Implementation of the **Continuous-Time Fourier Transform (CTFT)** and its Inverse (ICTFT) for signal analysis and reconstruction.
* **Visualization:** Detailed plotting of Magnitude/Phase Spectra and time-domain signals using `stem` and `plot`.

## ⚙️ Technology Stack

* **Environment:** MATLAB (primarily R2018+ recommended)
* **Key Tools:** Symbolic Math Toolbox, Built-in `conv` and custom functions.

## 📂 Project Modules

| Folder | Primary Focus | Key MATLAB Files |
| :--- | :--- | :--- |
| **01_Advanced_Signal_Analysis** | Time-Domain Operations, CTFT Spectrum, Periodicity | `soal1.m`, `soal2alef.m`, `soal4.m` |
| **02_Convolution_and_System_Analysis** | Custom Convolution (LTI Systems) and Fundamental Signals | `convolution.m`, `array_conv.m`, `unit_imp.m` |
| **03_Fourier_Analysis_and_Reconstruction** | Custom DFS, CTFS, CTFT and Inverse Transforms | `soal1a.m`, `soal2a.m`, `soal3a.m` |

---

*For detailed instructions and specific signal definitions, please refer to the individual `README.md` file within each project folder.*
