v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -0 80 50 80 {
lab=CLKB}
N 0 -180 50 -180 {
lab=CLK}
N 0 -140 20 -140 {
lab=VSS_3V3}
N -0 40 20 40 {
lab=VSS_3V3}
N 20 -140 20 -130 {
lab=VSS_3V3}
N 20 -130 50 -130 {
lab=VSS_3V3}
N 50 -140 50 -130 {
lab=VSS_3V3}
N 20 30 20 40 {
lab=VSS_3V3}
N 20 30 50 30 {
lab=VSS_3V3}
N 50 30 50 40 {
lab=VSS_3V3}
N 190 40 210 40 {
lab=VDD_3V3}
N 190 40 190 50 {
lab=VDD_3V3}
N 160 50 190 50 {
lab=VDD_3V3}
N 160 40 160 50 {
lab=VDD_3V3}
N 190 -140 210 -140 {
lab=VDD_3V3}
N 190 -150 190 -140 {
lab=VDD_3V3}
N 160 -150 190 -150 {
lab=VDD_3V3}
N 160 -150 160 -140 {
lab=VDD_3V3}
N 160 -20 160 0 {
lab=RCLKB_3V3}
N 80 40 130 40 {
lab=RCLK_3V3}
N 80 -140 130 -140 {
lab=RCLKB_3V3}
N 90 -70 90 40 {
lab=RCLK_3V3}
N 90 -70 160 -70 {
lab=RCLK_3V3}
N 110 -20 160 -20 {
lab=RCLKB_3V3}
N 160 -100 160 -70 {
lab=RCLK_3V3}
N 110 -140 110 -20 {
lab=RCLKB_3V3}
N 0 -140 0 40 {
lab=VSS_3V3}
N 210 -140 210 40 {
lab=VDD_3V3}
N -20 -50 0 -50 {
lab=VSS_3V3}
N 200 -50 210 -50 {
lab=VDD_3V3}
N 110 -160 110 -140 {
lab=RCLKB_3V3}
N 90 40 90 60 {
lab=RCLK_3V3}
N 690 -20 710 -20 {
lab=CLKB_3V3}
N 690 -80 710 -80 {
lab=CLK_3V3}
N 90 60 260 60 {
lab=RCLK_3V3}
N 260 -20 260 60 {
lab=RCLK_3V3}
N 110 -160 260 -160 {
lab=RCLKB_3V3}
N 260 -160 260 -80 {
lab=RCLKB_3V3}
N 610 -0 610 40 {
lab=VDD_3V3}
N 610 -140 610 -100 {
lab=VDD_3V3}
N 410 -140 410 -110 {
lab=VDD_3V3}
N 410 10 410 40 {
lab=VSS_3V3}
N 610 -60 610 -50 {
lab=VSS_3V3}
N 580 -50 610 -50 {
lab=VSS_3V3}
N 580 -50 580 40 {
lab=VSS_3V3}
N 410 40 580 40 {
lab=VSS_3V3}
N 610 -50 610 -40 {
lab=VSS_3V3}
N 410 -140 610 -140 {
lab=VDD_3V3}
N 260 -80 280 -80 {}
N 260 -20 280 -20 {}
N 540 -80 610 -80 {}
N 540 -20 610 -20 {}
C {devices/ipin.sym} 0 -180 0 0 {name=p1 lab=CLK}
C {devices/opin.sym} 710 -80 2 1 {name=CLK_3V3 lab=CLK_3V3}
C {devices/opin.sym} 710 -20 0 0 {name=CLKB_3V3 lab=CLKB_3V3}
C {devices/iopin.sym} 0 -260 0 1 {name=VSS_3V3 lab=VSS_3V3}
C {devices/iopin.sym} 0 -300 0 1 {name=VDD_3V3 lab=VDD_3V3}
C {devices/ipin.sym} 0 80 0 0 {name=CLKB lab=CLKB}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 50 -160 1 0 {name=M1
L=0.5
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 50 60 3 0 {name=M2
L=0.5
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 160 -120 1 1 {name=M3
L=1.5
W=0.5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 160 20 3 1 {name=M4
L=1.5
W=0.5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 90 60 3 0 {name=p2 sig_type=std_logic lab=RCLK_3V3}
C {devices/lab_pin.sym} 110 -160 1 0 {name=p3 sig_type=std_logic lab=RCLKB_3V3}
C {devices/lab_pin.sym} -20 -50 2 1 {name=p4 sig_type=std_logic lab=VSS_3V3}
C {devices/lab_pin.sym} 200 -50 2 1 {name=p5 sig_type=std_logic lab=VDD_3V3}
C {devices/lab_pin.sym} 410 -140 0 0 {name=p9 sig_type=std_logic lab=VDD_3V3}
C {sky130_fd_sc_hvl__inv_2.sym} 650 -20 2 1 {name=x7 prefix=sky130_fd_sc_hvl__ }
C {sky130_fd_sc_hvl__inv_2.sym} 650 -80 0 0 {name=x8 prefix=sky130_fd_sc_hvl__ }
C {devices/lab_pin.sym} 610 40 2 0 {name=p8 sig_type=std_logic lab=VDD_3V3}
C {clock_3v3/nonoverlapping_generator.sym} 410 -50 0 0 {name=x1}
C {devices/lab_pin.sym} 410 40 0 0 {name=p10 sig_type=std_logic lab=VSS_3V3}
