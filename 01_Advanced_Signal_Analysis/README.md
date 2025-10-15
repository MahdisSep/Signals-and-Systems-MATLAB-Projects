# 01 - Advanced Signal Analysis and Transform Visualization (MATLAB)

## 🌟 Project Overview

This comprehensive MATLAB project covers essential concepts in Signals and Systems, including **time domain transformations**, **Fourier Transform analysis (Magnitude and Phase)**, **periodicity/replication**, and **decomposition of signals into even and odd components**. The exercises utilize MATLAB's symbolic toolbox for complex calculus and plotting functions for visualization.

## ✨ Key Exercises and Concepts

### 1\. Fundamental Discrete-Time Operations (`soal1.m`, `tabe.m`)

  * **Concept:** Time shifting and time scaling of a discrete sinusoidal signal ($x[n] = \sin(n)$).
  * **Implementation:** The reusable function `tabe.m` performs shifting ($y[n] = \sin(n - a)$) and scaling ($y[n] = \sin(a \cdot n)$).
  * **Visualization:** Uses `stem()` for discrete-time signal plotting.

### 2\. Frequency Domain Analysis (Fourier Transform)

These scripts analyze the magnitude and phase response of signals using the Fourier Transform concept. Both plots use `subplot` to show **Magnitude (Abs)** and **Phase (Angle)**.

#### a. Continuous-Time Fourier Transform (CTFT) (`soal2alef.m`)

  * **Signal:** $x(t) = e^{-2t}u(t)$.
  * **Analysis:** Calculates the CTFT, $\mathcal{F}\{x(t)\}$, by finding the integral $\int_{0}^{\infty} e^{-2t}e^{-j\omega t} dt$.
  * **Implementation:** Uses MATLAB's **Symbolic Math Toolbox (`syms t`, `int`)** to solve the improper integral $\int_{0}^{\infty} e^{-2t-(j\omega t)} dt$.
  * **Visualization:** Plots the magnitude ($|\mathcal{F}\{x(t)\}|$) and phase ($\angle \mathcal{F}\{x(t)\}$) over $\omega \in [-5\pi, 5\pi]$.

#### b. Differentiation in Frequency Domain (`soal2b.m`)

  * **Signal:** A complex exponential signal $f(t) = t e^{j(2\pi t)/4}$.
  * **Analysis:** Finds the derivative of the signal $\frac{df(t)}{dt}$.
  * **Implementation:** Uses the **Symbolic Math Toolbox (`syms t`, `diff`)** for differentiation.
  * **Visualization:** Plots the magnitude and phase of the resulting derivative.

### 3\. Periodic Signal Generation (`soal3alef.m`, `soal3b.m`)

  * **Concept:** Creating a periodic signal by replicating a single period $M=3$ times.
  * **Implementation:** Uses the **`repmat` function** to replicate the signal vector and `numel` to adjust the time axis for proper plotting.
  * **Signals:**
      * **`soal3alef.m`:** Replication of a ramp-like signal over $[-1, 1]$.
      * **`soal3b.m`:** Replication of a cosine signal $X(t) = \cos(\pi t)$ over $[-0.5, 0.5]$.

### 4\. Even and Odd Signal Decomposition (`soal4.m`)

  * **Concept:** Decomposing an arbitrary discrete-time signal into its even and odd components ($x[n] = x_{even}[n] + x_{odd}[n]$).
  * **Implementation:** Defines the even ($x_{even}[n] = 0.5(x[n] + x[-n])$) and odd ($x_{odd}[n] = 0.5(x[n] - x[-n])$) components through manual index manipulation and conditional logic.
  * **Visualization:** Plots the resulting even ($x_{even}$) and odd ($x_{odd}$) components using `stem()`.

## ⚙️ Technologies Used

| Category | Technology | Purpose |
| :--- | :--- | :--- |
| **Language/Environment** | MATLAB | Core environment for all calculations and visualization. |
| **Toolbox** | Symbolic Math (`syms`, `int`, `diff`) | Used for solving continuous-time integrals (CTFT) and derivatives. |
| **Functions** | `repmat`, `stem`, `abs`, `angle` | Essential functions for signal replication, discrete plotting, and complex number analysis. |

## 🚀 Getting Started

To run these scripts, simply open the `.m` files in MATLAB and execute them in the environment's command window.
