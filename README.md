# 🎙️ Speech Signal Algorithm Denoising using Wavelet Threshold (MATLAB)

This project presents a **Speech Signal Denoising Algorithm** based on **Wavelet Thresholding** to remove unwanted noise from speech signals while retaining the useful features.  
It is implemented in **MATLAB**.

---

## 🧠 Problem Description
Speech signals often get corrupted with background noise during transmission or recording.  
Traditional digital filters (IIR, FIR) fail to handle **non-stationary random signals** efficiently.  
Hence, this project uses **Wavelet Transform** for adaptive and efficient noise removal.

---

## 🎯 Objective
To design and simulate an **improved wavelet threshold denoising algorithm** that can:
- Effectively reduce noise in speech signals.
- Preserve important speech information.
- Perform well for non-stationary random signals.

---

## 🧩 Methodology
1. **Read the speech signal** that is mixed with artificial noise.
2. **Decompose** the signal using **Discrete Wavelet Transform (DWT)**.
3. **Apply thresholding** (soft/hard) on the wavelet coefficients.
4. **Reconstruct** the clean signal using **Inverse DWT (IDWT)**.
5. **Compare** results using plots and SNR values.

---

**Selection of Threshold**-
It directly affects the performance of denoising.Choosing a too-large threshold may retain the noisy wavelet coefficients and distort the original speech signal.If the selected threshold is too small, the wavelet coefficients of the useful signal may be filtered out, which will also distort the original signal.
## Advantages:
  -Effectively removes noise from non-stationary random speech signals where traditional filters fail.
  
  -Decomposes signal into discrete scales using Mallat algorithm to isolate speech and noise.
  
  -Retains useful low frequency speech coefficients while removing high frequency noise.




## ⚙️ Technologies Used
- **MATLAB R2020b**
- **Wavelet Toolbox**

---
