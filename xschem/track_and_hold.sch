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
N 380 -230 380 -190 {
lab=VDD}
N 380 -230 460 -230 {
lab=VDD}
N 380 -170 460 -170 {
lab=VSS}
N -90 -200 -60 -200 {
lab=#net1}
N -60 -200 -30 -200 {
lab=#net1}
N 30 -200 40 -200 {
lab=VSS}
N 0 -280 0 -240 {
lab=HLD}
N -120 -280 -120 -240 {
lab=HLD}
N -160 -200 -150 -200 {
lab=#net2}
N -160 200 -150 200 {
lab=#net3}
N -120 240 -120 280 {
lab=TRK}
N -60 60 -60 90 {
lab=VDD}
N -90 200 -60 200 {
lab=#net4}
N -60 200 -30 200 {
lab=#net4}
N 0 240 0 280 {
lab=TRK}
N 30 200 40 200 {
lab=VDD}
N -90 -90 -90 0 {
lab=in}
N -90 0 -90 90 {
lab=in}
N -30 -90 -30 0 {
lab=out}
N -30 0 -30 90 {
lab=out}
N 30 -200 30 -190 {
lab=VSS}
N 0 -190 30 -190 {
lab=VSS}
N 0 -200 -0 -190 {
lab=VSS}
N 0 190 0 200 {
lab=VDD}
N 0 190 30 190 {
lab=VDD}
N 30 190 30 200 {
lab=VDD}
N -120 -200 -120 -190 {
lab=#net2}
N -150 -190 -120 -190 {
lab=#net2}
N -150 -200 -150 -190 {
lab=#net2}
N -150 190 -150 200 {
lab=#net3}
N -150 190 -120 190 {
lab=#net3}
N -120 190 -120 200 {
lab=#net3}
N -60 -200 -60 -130 {
lab=#net1}
N -120 -130 -60 -130 {
lab=#net1}
N -120 -130 -120 -40 {
lab=#net1}
N -160 -10 -160 -0 {
lab=in}
N -160 -140 -160 -70 {
lab=#net5}
N -190 -40 -160 -40 {
lab=VSS}
N -290 -50 -290 -40 {
lab=VSS}
N -290 -80 -280 -80 {
lab=VSS}
N -280 -80 -280 -50 {
lab=VSS}
N -290 -50 -280 -50 {
lab=VSS}
N -340 -80 -330 -80 {
lab=HLD}
N -290 -110 -160 -110 {
lab=#net5}
N -60 130 -60 200 {
lab=#net4}
N -160 0 -160 10 {
lab=in}
N -120 40 -120 130 {
lab=#net4}
N -120 130 -60 130 {
lab=#net4}
N -190 40 -160 40 {
lab=VDD}
N -160 70 -160 140 {
lab=#net6}
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
N -290 120 -160 120 {
lab=#net6}
C {devices/iopin.sym} 380 -170 2 0 {name=VSS lab=VSS}
C {devices/iopin.sym} 380 -190 0 1 {name=VDD lab=VDD}
C {devices/ipin.sym} -240 0 0 0 {name=in lab=in}
C {sky130_fd_pr/cap_mim_m3_1.sym} 180 70 0 0 {name=C1 model=cap_mim_m3_1 W=5 L=5 MF=1 spiceprefix=X}
C {devices/vsource.sym} -160 -170 0 1 {name=V1 value=3.3 savecurrent=false}
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
C {devices/res.sym} 460 -200 0 0 {name=R1
value=1G
footprint=1206
device=resistor
m=1}
C {devices/iopin.sym} 0 280 3 1 {name=TRK lab=TRK}
C {devices/iopin.sym} 0 -280 1 1 {name=HLD lab=HLD}
C {devices/simulator_commands_shown.sym} 30 -400 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.model switch1 sw vt=1.65 vh=0 ron=1 roff=1G
"}
C {devices/lab_pin.sym} 40 -200 0 1 {name=p5 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -160 170 0 1 {name=V2 value=3.3 savecurrent=false}
C {devices/lab_pin.sym} -120 280 3 0 {name=p8 sig_type=std_logic lab=TRK}
C {devices/lab_pin.sym} -60 60 1 0 {name=p9 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 40 200 0 1 {name=p11 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -60 110 3 0 {name=M1p
L=0.5
W=1.28
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 0 -220 1 0 {name=M4
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 0 220 1 1 {name=M4p
L=0.5
W=2
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
C {devices/lab_pin.sym} -120 -280 1 0 {name=p4 sig_type=std_logic lab=HLD}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -120 -220 3 1 {name=M2
L=0.5
W=2
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -120 220 3 0 {name=M2p
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -140 -40 2 0 {name=M3
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -310 -80 0 0 {name=M6
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
C {devices/lab_pin.sym} -190 -40 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -290 -40 3 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -340 -80 0 0 {name=p7 sig_type=std_logic lab=HLD}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -140 40 0 1 {name=M3p
L=0.5
W=2
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
W=2
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
