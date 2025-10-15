# 03 - Fourier Analysis, Series, and Transform Implementation (MATLAB)

## 🌟 Project Overview

This project implements the core transformations of Fourier analysis—**Discrete Fourier Series (DFS)**, **Continuous-Time Fourier Series (CTFS)**, and **Continuous-Time Fourier Transform (CTFT)**—from their fundamental mathematical definitions using MATLAB's numerical and symbolic capabilities. The ultimate goal is to reconstruct signals using the calculated coefficients/transforms, demonstrating the power of frequency domain analysis.

## ✨ Key Exercises and Concepts

### 1\. Discrete Fourier Series (DFS) Implementation

This section implements the analysis and synthesis equations for the DFS of a discrete periodic signal.

  * **DFS Analysis (`soal1a.m`):** Implements the equation for finding the Fourier Series coefficients ($A_k$) of a periodic signal $x[n]$ with period $N$:
    $$A_k = \frac{1}{N} \sum_{n=0}^{N-1} x[n] e^{-j k \omega_0 n}$$
  * **IDFS Synthesis (`soal1b.m`):** Implements the equation for reconstructing the periodic signal $x[n]$ from its coefficients $A_k$:
    $$x[n] = \sum_{k=0}^{N-1} A_k e^{j k \omega_0 n}$$
  * **Test and Reconstruction (`soal1c.m`):**
      * Applies `soal1a.m` to a unit impulse signal $s=[0, 0, 1]$ to find its coefficients.
      * Uses `soal1b.m` to reconstruct the signal.
      * Uses `repmat` to plot the reconstructed signal over multiple periods, confirming periodicity and correct reconstruction.

### 2\. Continuous-Time Fourier Series (CTFS)

  * **CTFS Analysis/Synthesis (`soal2a.m`):** This script acts as a powerful tool to:
    1.  Calculate the **Trigonometric Fourier Series** coefficients ($A_0$, $A_n$, $B_n$) for a continuous periodic signal $s(t)$ with period $T$.
    2.  Use these coefficients to reconstruct the signal $h(t)$ up to the $N$-th harmonic, where $N$ is the desired number of terms.
    <!-- end list -->
      * **Implementation:** Leverages the **Symbolic Math Toolbox (`syms x`, `int`)** to solve the $A_0$, $A_n$, and $B_n$ integrals:
        $$A_0 = \frac{1}{T} \int_{-T/2}^{T/2} s(t) dt$$
        $$A_n = \frac{2}{T} \int_{-T/2}^{T/2} s(t) \cos(n \omega_0 t) dt$$
        $$B_n = \frac{2}{T} \int_{-T/2}^{T/2} s(t) \sin(n \omega_0 t) dt$$
  * **Test Case (`soal2tabe.m`):** Calculates the Fourier Series coefficients for a **Rectangular Pulse** (`rectangularPulse(0.5*x)`) with a period $T=4$, reconstructing the signal up to $N=5$ harmonics.
  * **Visualization (`functions.m`):** Plots the resulting reconstructed signal, demonstrating the Gibbs phenomenon as the series approximates the sharp edges of the pulse.

### 3\. Continuous-Time Fourier Transform (CTFT)

This section implements the integral definitions of the forward and inverse CTFT.

  * **CTFT Forward (`soal3a.m`):** Implements the analysis equation for the CTFT of a continuous signal $x(t)$:
    $$X(j\omega) = \int_{-\infty}^{\infty} x(t) e^{-j\omega t} dt$$
  * **ICTFT Inverse (`soal3b.m`):** Implements the synthesis equation for reconstructing $x(t)$ from $X(j\omega)$:
    $$x(t) = \frac{1}{2\pi} \int_{-\infty}^{\infty} X(j\omega) e^{j\omega t} d\omega$$
  * **Test and Reconstruction (`soal3c.m`):**
      * Calculates the CTFT of a **Rectangular Pulse** (`rectangularPulse(0.5*t)`).
      * Applies the ICTFT to the result to reconstruct the original signal.
      * Uses `fplot` to visualize the final reconstructed signal, verifying the successful round-trip transform.

## ⚙️ Technologies Used

| Category | Technology | Purpose |
| :--- | :--- | :--- |
| **Language/Environment** | MATLAB | Core environment for all numerical computation. |
| **Toolbox** | Symbolic Math (`syms`, `int`, `fplot`) | Crucial for solving continuous-time integrals and handling symbolic variables ($\omega, t$). |
| **Functions** | `exp`, `cos`, `sin`, `repmat`, `clc` | Used for defining complex exponentials, trigonometric bases, replication, and visualization. |

## 🚀 Getting Started

To run the experiments, ensure all `.m` files are placed in the same directory within the MATLAB environment. Execute the main test scripts (`soal1c`, `soal2tabe`, `soal3c`) from the MATLAB Command Window.

