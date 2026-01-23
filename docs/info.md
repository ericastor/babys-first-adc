<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

Explain how your project works

### Specifications Goal

Sampling frequency: 66.5 MHz (matching maximum clock)
(Unrealistic ideal would be ~1 GHz)

Resolution: 8 bits

Accepted voltage range: 0-3.3 V

### Required Targets

Amplitude (A) = 1.65 V

LSB (∆) = 12.8 mV

Ideal SNR: 1.7609 + 6.0206*N ~= 50 dB

Target harmonic distortion: -53 dB

### Intermediate Requirements

Targeting kT/C noise costing 1 dB @ 75 C (348 K), we want C1 >= 2.68 fF.

Actual minimum SKY130 `cap_mim_m3_1` capacitance = 2.76 fF, so any C1 will do.

M1 must have ON resistance <= 890 kOhms for a 33 MHz target frequency.
(<= 28.6 kOhms if targeting 1 GHz)

Thus, M1 width should be: ???

## How to test

Explain how to use your project

## External hardware

List external hardware used in your project (e.g. PMOD, LED display, etc), if any
