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
N -90 -140 -60 -140 {
lab=#net1}
N -60 -140 -30 -140 {
lab=#net1}
N 30 -140 40 -140 {
lab=VSS}
N 0 -220 0 -180 {
lab=HLD}
N -120 -220 -120 -180 {
lab=TRK}
N 20 -180 40 -180 {
lab=VSS}
N -160 -180 -140 -180 {
lab=VSS}
N -160 -140 -160 -110 {
lab=#net2}
N -160 -140 -150 -140 {
lab=#net2}
N -160 110 -160 140 {
lab=#net3}
N -160 140 -150 140 {
lab=#net3}
N -120 180 -120 220 {
lab=TRK}
N -160 180 -140 180 {
lab=VSS}
N -60 60 -60 90 {
lab=VDD}
N -90 140 -60 140 {
lab=#net4}
N -60 140 -30 140 {
lab=#net4}
N 0 180 0 220 {
lab=HLD}
N 20 180 40 180 {
lab=VSS}
N 30 140 40 140 {
lab=VDD}
N -60 130 -60 140 {
lab=#net4}
N -60 -140 -60 -130 {
lab=#net1}
N -160 -0 -160 50 {
lab=in}
N -90 -90 -90 0 {
lab=in}
N -90 0 -90 90 {
lab=in}
N -30 -90 -30 0 {
lab=out}
N -30 0 -30 90 {
lab=out}
N -160 -50 -160 0 {
lab=in}
C {devices/iopin.sym} 380 -170 2 0 {name=VSS lab=VSS}
C {devices/iopin.sym} 380 -190 0 1 {name=VDD lab=VDD}
C {devices/ipin.sym} -240 0 0 0 {name=in lab=in}
C {sky130_fd_pr/cap_mim_m3_1.sym} 180 70 0 0 {name=C1 model=cap_mim_m3_1 W=5 L=5 MF=1 spiceprefix=X}
C {devices/vsource.sym} -160 -80 0 1 {name=V1 value=3.3 savecurrent=false}
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
C {devices/iopin.sym} -120 -220 1 1 {name=TRK lab=TRK}
C {devices/iopin.sym} 0 -220 1 1 {name=HLD lab=HLD}
C {devices/switch_ngspice.sym} -120 -140 1 0 {name=S2 model=SWITCH1}
C {devices/switch_ngspice.sym} 0 -140 3 1 {name=S4 model=SWITCH1}
C {devices/simulator_commands_shown.sym} 30 -400 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.model switch1 sw vt=1.65 vh=0 ron=1 roff=1G
"}
C {devices/lab_pin.sym} -160 -180 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 40 -180 0 1 {name=p4 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 40 -140 0 1 {name=p5 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -160 80 0 1 {name=V2 value=3.3 savecurrent=false}
C {devices/switch_ngspice.sym} -120 140 1 1 {name=S2p model=SWITCH1}
C {devices/lab_pin.sym} -160 180 2 1 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -120 220 3 0 {name=p8 sig_type=std_logic lab=TRK}
C {devices/lab_pin.sym} -60 60 1 0 {name=p9 sig_type=std_logic lab=VDD}
C {devices/switch_ngspice.sym} 0 140 3 0 {name=S4p model=SWITCH1}
C {devices/lab_pin.sym} 0 220 3 0 {name=p10 sig_type=std_logic lab=HLD}
C {devices/lab_pin.sym} 40 140 0 1 {name=p11 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 40 180 0 1 {name=p12 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -60 110 3 0 {name=M2
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
