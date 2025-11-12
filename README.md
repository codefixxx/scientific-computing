# 🔢 Numerical Methods – Root Finding, Linear Systems, Differentiation & ODEs

## 📘 Overview
This repository provides **MATLAB implementations** of essential **Numerical Methods** used in scientific and engineering computations.  
Each algorithm demonstrates how numerical techniques can be applied to approximate solutions of mathematical problems that are difficult or impossible to solve analytically.

The collection covers:

- ✅ **Root Finding Algorithms**  
- ✅ **Linear System Solvers**  
- ✅ **Numerical Differentiation & Interpolation**  
- ✅ **Numerical Integration (Newton–Cotes Formulas)**  
- ✅ **Numerical Solutions of First-Order ODEs**

---

## 📂 Implemented Methods

### 🔍 Root-Finding Methods
1. **Bisection Method** – Reliable interval-halving technique.  
2. **Regula Falsi (False Position) Method** – Uses secant interpolation for root estimation.  
3. **Newton–Raphson Method** – Fast convergence using derivatives.  
4. **Secant Method** – Approximates derivatives numerically for faster convergence.  
5. **Rate of Convergence Analysis** – Compares the order of convergence (`p`) among all methods.  

---

### 🧮 Linear System Solvers
1. **Gauss–Jacobi Method** – Iterative method suitable for diagonally dominant systems.  
2. **Gauss–Seidel Method** – Faster iterative refinement using latest variable updates.  

---

### 📈 Numerical Differentiation & Interpolation
1. **Lagrange Interpolation Differentiation** – Uses Lagrange's formula to estimate derivatives.  
2. **Newton Forward Difference Method** – Suitable for equally spaced data near the beginning.  
3. **Newton Backward Difference Method** – Used for equally spaced data near the end of the table.  

---

### ∫ Numerical Integration (Newton–Cotes Formulas)
1. **Trapezoidal Rule** – Linear approximation of the curve.  
2. **Simpson's 1/3 Rule** – Parabolic interpolation-based integration.  
3. **Simpson's 3/8 Rule** – Cubic interpolation-based integration.  
4. **Boole's Rule** – Higher-order accurate Newton–Cotes formula.  
5. **Weddle's Rule** – Combines high precision with simplicity for six subintervals.  

---

### 🧠 Numerical Solutions of First-Order ODEs
1. **Picard's Iteration Method** – Successive approximation technique.  
2. **Taylor's Series Method** – Expands the solution as a Taylor series.  
3. **Euler's Method** – Basic numerical approach using tangent approximation.  
4. **Modified Euler's Method (Heun's)** – Improved accuracy using average slopes.  
5. **Runge–Kutta 4th Order (RK4)** – High accuracy with four slope evaluations.  

---

## 🛠 Requirements
- MATLAB **R2022a** or later (older versions may work).  
- Symbolic toolbox is required to use syms.  

---


## 🚀 Usage
1. Clone the repository:
   ```bash
   git clone https://github.com/codefixxx/scientific-computing.git

2. Open MATLAB and add repository to the path
     ```bash
    addpath(genpath('scientific-computing'))

3. Run any Scripts
