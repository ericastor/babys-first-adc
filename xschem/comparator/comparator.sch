v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -420 -240 -290 -240 {
lab=VDD}
N -290 -240 -100 -240 {
lab=VDD}
N -100 -240 -0 -240 {
lab=VDD}
N -0 -240 100 -240 {
lab=VDD}
N 100 -240 290 -240 {
lab=VDD}
N 290 -240 420 -240 {
lab=VDD}
N 420 -240 420 -220 {
lab=VDD}
N 290 -240 290 -220 {
lab=VDD}
N 100 -240 100 -220 {
lab=VDD}
N -100 -240 -100 -220 {
lab=VDD}
N -290 -240 -290 -220 {
lab=VDD}
N -420 -240 -420 -220 {
lab=VDD}
N -420 -190 -410 -190 {
lab=VDD}
N -410 -220 -410 -190 {
lab=VDD}
N -420 -220 -410 -220 {
lab=VDD}
N -290 -190 -280 -190 {
lab=VDD}
N -280 -220 -280 -190 {
lab=VDD}
N -290 -220 -280 -220 {
lab=VDD}
N -110 -190 -100 -190 {
lab=VDD}
N -110 -220 -110 -190 {
lab=VDD}
N -110 -220 -100 -220 {
lab=VDD}
N 100 -190 110 -190 {
lab=VDD}
N 110 -220 110 -190 {
lab=VDD}
N 100 -220 110 -220 {
lab=VDD}
N 280 -190 290 -190 {
lab=VDD}
N 280 -220 280 -190 {
lab=VDD}
N 280 -220 290 -220 {
lab=VDD}
N 410 -190 420 -190 {
lab=VDD}
N 410 -220 410 -190 {
lab=VDD}
N 410 -220 420 -220 {
lab=VDD}
N -0 150 10 150 {
lab=VSS}
N 10 150 10 180 {
lab=VSS}
N 0 180 10 180 {
lab=VSS}
N -0 100 0 120 {
lab=#net1}
N -100 100 0 100 {
lab=#net1}
N -100 80 -100 100 {
lab=#net1}
N 0 100 100 100 {
lab=#net1}
N 100 80 100 100 {
lab=#net1}
N -100 -0 -100 20 {
lab=#net2}
N -100 -20 -100 -0 {
lab=#net2}
N 100 0 100 20 {
lab=#net3}
N 100 -20 100 0 {
lab=#net3}
N -100 -100 -100 -80 {
lab=X}
N -100 -120 -100 -100 {
lab=X}
N -100 -140 -100 -120 {
lab=X}
N -100 -160 -100 -140 {
lab=X}
N 100 -100 100 -80 {
lab=Y}
N 100 -120 100 -100 {
lab=Y}
N 100 -140 100 -120 {
lab=Y}
N 100 -160 100 -140 {
lab=Y}
N -420 -160 -420 0 {
lab=#net2}
N -420 0 -100 -0 {
lab=#net2}
N 100 0 420 -0 {
lab=#net3}
N 420 -160 420 -0 {
lab=#net3}
N -290 -140 -100 -140 {
lab=X}
N -290 -160 -290 -140 {
lab=X}
N 100 -140 290 -140 {
lab=Y}
N 290 -160 290 -140 {
lab=Y}
N -100 -140 -30 -140 {
lab=X}
N -30 -140 20 -190 {
lab=X}
N 20 -190 60 -190 {
lab=X}
N 30 -140 100 -140 {
lab=Y}
N -20 -190 30 -140 {
lab=Y}
N -60 -190 -20 -190 {
lab=Y}
N -100 -100 -30 -100 {
lab=X}
N -30 -100 20 -50 {
lab=X}
N 20 -50 60 -50 {
lab=X}
N 20 -100 100 -100 {
lab=Y}
N -30 -50 20 -100 {
lab=Y}
N -60 -50 -30 -50 {
lab=Y}
N -0 -280 0 -240 {
lab=VDD}
N -0 180 -0 220 {
lab=VSS}
N 0 50 100 50 {
lab=VSS}
N -100 50 0 50 {
lab=VSS}
N 100 -50 140 -50 {
lab=VSS}
N -140 -50 -100 -50 {
lab=VSS}
N 140 50 160 50 {
lab=Vin2}
N -160 50 -140 50 {
lab=Vin1}
N -100 -120 -80 -120 {
lab=X}
N 80 -120 100 -120 {
lab=Y}
N -480 -140 -460 -140 {
lab=CLK}
N -460 -190 -460 -140 {
lab=CLK}
N -460 -140 -330 -140 {
lab=CLK}
N -330 -190 -330 -140 {
lab=CLK}
N 460 -140 480 -140 {
lab=CLK}
N 460 -190 460 -140 {
lab=CLK}
N 330 -140 460 -140 {
lab=CLK}
N 330 -190 330 -140 {
lab=CLK}
N -60 150 -40 150 {}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -120 50 0 0 {name=M1
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 120 50 0 1 {name=M2
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -80 -50 0 1 {name=M3
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 80 -50 0 0 {name=M4
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -80 -190 0 1 {name=M5
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
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 80 -190 0 0 {name=M6
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
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -20 150 0 0 {name=M7
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -440 -190 0 0 {name=M8
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
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 440 -190 0 1 {name=M9
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
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -310 -190 0 0 {name=M10
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
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 310 -190 0 1 {name=M11
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
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/iopin.sym} 0 -280 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 0 220 0 0 {name=p2 lab=VSS}
C {devices/lab_pin.sym} 0 50 1 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 140 -50 2 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -140 -50 2 1 {name=p5 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} -160 50 0 0 {name=p6 lab=Vin1}
C {devices/ipin.sym} 160 50 0 1 {name=p7 lab=Vin2}
C {devices/opin.sym} -80 -120 0 0 {name=p8 lab=X}
C {devices/opin.sym} 80 -120 0 1 {name=p9 lab=Y}
C {devices/ipin.sym} -470 -280 0 0 {name=p10 lab=CLK}
C {devices/lab_pin.sym} -480 -140 2 1 {name=p11 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 480 -140 2 0 {name=p12 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} -60 150 2 1 {name=p13 sig_type=std_logic lab=CLK}
