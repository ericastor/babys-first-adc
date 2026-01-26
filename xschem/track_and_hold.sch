v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -30 -0 70 0 {
lab=out}
N 180 0 180 40 {
lab=out}
N -240 -0 -90 0 {
lab=in}
N 70 0 190 -0 {
lab=out}
N -60 -90 -60 -60 {
lab=VSS}
N 180 100 180 110 {
lab=VSS}
N -90 -280 -60 -280 {
lab=#net1}
N -60 -280 -30 -280 {
lab=#net1}
N 30 -280 40 -280 {
lab=VSS}
N 0 -360 0 -320 {
lab=HLD}
N -120 -360 -120 -320 {
lab=HLD}
N -120 320 -120 360 {
lab=TRK}
N -60 60 -60 90 {
lab=VDD}
N -90 280 -60 280 {
lab=#net2}
N -60 280 -30 280 {
lab=#net2}
N 0 320 0 360 {
lab=TRK}
N 30 280 40 280 {
lab=VDD}
N -90 -90 -90 0 {
lab=in}
N -90 0 -90 90 {
lab=in}
N -30 -90 -30 0 {
lab=out}
N -30 0 -30 90 {
lab=out}
N 30 -280 30 -270 {
lab=VSS}
N 0 -270 30 -270 {
lab=VSS}
N 0 -280 0 -270 {
lab=VSS}
N 0 270 0 280 {
lab=VDD}
N 0 270 30 270 {
lab=VDD}
N 30 270 30 280 {
lab=VDD}
N -120 -280 -120 -270 {
lab=#net3}
N -150 -270 -120 -270 {
lab=#net3}
N -150 270 -150 280 {
lab=#net4}
N -150 270 -120 270 {
lab=#net4}
N -120 270 -120 280 {
lab=#net4}
N -120 -130 -60 -130 {
lab=#net1}
N -120 -130 -120 -40 {
lab=#net1}
N -160 -10 -160 -0 {
lab=in}
N -190 -40 -160 -40 {
lab=VSS}
N -290 -60 -290 -50 {
lab=VSS}
N -290 -90 -280 -90 {
lab=VSS}
N -280 -90 -280 -60 {
lab=VSS}
N -290 -60 -280 -60 {
lab=VSS}
N -340 -90 -330 -90 {
lab=HLD}
N -160 0 -160 10 {
lab=in}
N -120 40 -120 130 {
lab=#net2}
N -120 130 -60 130 {
lab=#net2}
N -190 40 -160 40 {
lab=VDD}
N -290 50 -290 60 {
lab=VDD}
N -290 60 -280 60 {
lab=VDD}
N -280 60 -280 90 {
lab=VDD}
N -290 90 -280 90 {
lab=VDD}
N -340 90 -330 90 {
lab=TRK}
N -290 -130 -290 -120 {
lab=#net5}
N -290 -120 -160 -120 {
lab=#net5}
N -160 -120 -160 -70 {
lab=#net5}
N -210 -140 -210 -130 {
lab=#net1}
N -210 -130 -120 -130 {
lab=#net1}
N -180 -190 -180 -180 {
lab=VDD}
N -240 -190 -210 -190 {
lab=#net3}
N -210 -190 -210 -180 {
lab=#net3}
N -60 -280 -60 -130 {
lab=#net1}
N -240 -190 -240 -180 {
lab=#net3}
N -290 -190 -240 -190 {
lab=#net3}
N -290 -280 -290 -190 {
lab=#net3}
N -150 -280 -150 -270 {
lab=#net3}
N -290 -280 -150 -280 {
lab=#net3}
N -290 120 -290 130 {
lab=#net6}
N -290 190 -290 280 {
lab=#net4}
N -290 280 -150 280 {
lab=#net4}
N -60 130 -60 280 {
lab=#net2}
N -160 70 -160 120 {
lab=#net6}
N -290 120 -160 120 {
lab=#net6}
N -210 130 -120 130 {
lab=#net2}
N -210 130 -210 140 {
lab=#net2}
N -180 180 -180 190 {
lab=VSS}
N -240 190 -210 190 {
lab=#net4}
N -210 180 -210 190 {
lab=#net4}
N -240 180 -240 190 {
lab=#net4}
N -290 190 -240 190 {
lab=#net4}
C {devices/iopin.sym} -310 -360 0 1 {name=VSS lab=VSS}
C {devices/iopin.sym} -310 -390 0 1 {name=VDD lab=VDD}
C {devices/ipin.sym} -240 0 0 0 {name=in lab=in}
C {sky130_fd_pr/cap_mim_m3_1.sym} 180 70 0 0 {name=C1 model=cap_mim_m3_1 W=5 L=5 MF=1 spiceprefix=X}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -60 -110 1 0 {name=M1
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
C {devices/opin.sym} 190 0 0 0 {name=out lab=out}
C {devices/lab_pin.sym} -60 -60 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 180 110 3 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} 0 360 3 1 {name=TRK lab=TRK}
C {devices/iopin.sym} 0 -360 1 1 {name=HLD lab=HLD}
C {devices/lab_pin.sym} 40 -280 0 1 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -120 360 3 0 {name=p8 sig_type=std_logic lab=TRK}
C {devices/lab_pin.sym} -60 60 1 0 {name=p9 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 40 280 0 1 {name=p11 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -60 110 3 0 {name=M1p
L=0.5
W=1.21
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 0 -300 1 0 {name=M4
L=0.5
W=5
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 0 300 1 1 {name=M4p
L=0.5
W=10
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
C {devices/lab_pin.sym} -120 -360 1 0 {name=p4 sig_type=std_logic lab=HLD}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -120 -300 3 1 {name=M2
L=0.5
W=10
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -120 300 3 0 {name=M2p
L=0.5
W=5
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -140 -40 2 0 {name=M3
L=0.5
W=5
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -310 -90 0 0 {name=M6
L=0.5
W=5
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
C {devices/lab_pin.sym} -190 -40 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -290 -50 3 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -340 -90 0 0 {name=p7 sig_type=std_logic lab=HLD}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -140 40 0 1 {name=M3p
L=0.5
W=10
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
C {devices/lab_pin.sym} -190 40 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -290 50 1 0 {name=p12 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -310 90 2 1 {name=M6p
L=0.5
W=10
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
C {devices/lab_pin.sym} -340 90 0 0 {name=p13 sig_type=std_logic lab=TRK}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -210 -160 1 1 {name=M5
L=0.5
W=10
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
C {sky130_fd_pr/cap_mim_m3_1.sym} -290 -160 0 1 {name=Cb model=cap_mim_m3_1 W=18 L=18 MF=1 spiceprefix=X}
C {devices/lab_pin.sym} -180 -190 3 1 {name=p14 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/cap_mim_m3_1.sym} -290 160 2 0 {name=Cbp model=cap_mim_m3_1 W=18 L=18 MF=1 spiceprefix=X}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -210 160 1 0 {name=M5p
L=0.5
W=5
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
C {devices/lab_pin.sym} -180 190 1 1 {name=p15 sig_type=std_logic lab=VSS}
