# 02 - Discrete Convolution and Fundamental Signal Analysis (MATLAB)

## 🌟 Project Overview

This project focuses on the theoretical and practical aspects of **Discrete-Time Convolution** ($y[n] = x[n] * h[n]$) using MATLAB. It includes the development of custom convolution functions using different numerical methods, analysis of convolution properties, and the implementation of fundamental signals.

## ✨ Key Exercises and Concepts

### 1\. Custom Convolution Implementations

The project implements two distinct methods for calculating discrete convolution, both verified against MATLAB's built-in `conv` function.

#### a. Direct Summation Method (`convolution.m`, `soal1b.m`)

  * **Concept:** Implements the formal definition of discrete convolution using nested loops: $y[n] = \sum_{k} x[k] h[n-k]$.
  * **Verification:** `soal1b.m` compares the output of `convolution.m` with `conv(x, h)` to confirm accuracy.
  * **Property Analysis (`soal1alef.m`):** Confirms the convolution length rule: $L_y = L_x + L_h - 1$ through multiple examples.

#### b. Matrix Anti-Diagonal Summation Method (`array_conv.m`, `soal2.m`)

  * **Concept:** Implements a less common, visual method of convolution. It calculates the product matrix ($x \cdot h^T$) and then sums the elements along the anti-diagonals (or skew diagonals) to obtain the convolution result.
  * **Verification:** `soal2.m` tests this custom function against the built-in `conv` for correctness.

### 2\. Fundamental Signals and System Properties

  * **Unit Step (`unit_step.m`):** Implements the discrete-time unit step function $u[n]$.
  * **Unit Impulse (`unit_imp.m`):** Implements the discrete-time unit impulse (Dirac delta) function $\delta[n]$.
  * **Sifting Property (`soal3alef.m`):** Demonstrates the crucial **Sifting Property** of the impulse function: the convolution of any signal $s[n]$ with the unit impulse $\delta[n]$ results in the signal itself ($s[n] * \delta[n] = s[n]$).

### 3\. Continuous-Time Filtering (`soal4.m`)

  * **Signal:** Defines a complex continuous-time signal $x(t)$ (a piecewise function).
  * **Filtering:** Convolves the signal $x(t)$ with a discrete sequence $h[n] = [1, 0, -1]$. This filter acts as a **first-difference operator**, which is a discrete approximation of the differentiation operation in the continuous domain.
  * **Analysis:** The script plots the input signal and the resulting filtered output.

## ⚙️ Technologies Used

| Category | Technology | Purpose |
| :--- | :--- | :--- |
| **Language/Environment** | MATLAB | Core environment for all numerical computation and visualization. |
| **Functions** | `conv`, `stem`, `zeros`, `length` | Essential MATLAB tools for convolution and signal creation/plotting. |
| **Control Structures** | Loops (`for`) | Used extensively in custom convolution functions (`convolution.m` and `array_conv.m`). |

## 🚀 Getting Started

To run these scripts, ensure all `.m` files are in the same MATLAB path or folder. Execute the main scripts (`soal1alef`, `soal1b`, `soal2`, `soal3alef`, `soal4`) from the MATLAB Command Window.
