v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -0 70 -0 80 {
lab=#net1}
N 0 40 10 40 {
lab=VSS}
N 10 40 10 110 {
lab=VSS}
N -0 110 10 110 {
lab=VSS}
N 0 140 -0 160 {
lab=VSS}
N -0 0 -0 10 {
lab=YB}
N 100 -10 100 0 {
lab=YB}
N -100 -10 -100 0 {
lab=YB}
N -100 0 -0 0 {
lab=YB}
N -0 -100 -0 -80 {
lab=VDD}
N -100 -80 -0 -80 {
lab=VDD}
N -100 -80 -100 -70 {
lab=VDD}
N -100 -70 -90 -70 {
lab=VDD}
N -90 -70 -90 -40 {
lab=VDD}
N -100 -40 -90 -40 {
lab=VDD}
N -0 -80 100 -80 {
lab=VDD}
N 100 -80 100 -70 {
lab=VDD}
N 90 -70 100 -70 {
lab=VDD}
N 90 -70 90 -40 {
lab=VDD}
N 90 -40 100 -40 {
lab=VDD}
N -160 -40 -140 -40 {
lab=X}
N 140 -40 160 -40 {
lab=Y}
N 490 70 490 80 {
lab=#net2}
N 480 40 490 40 {
lab=VSS}
N 480 110 490 110 {
lab=VSS}
N 490 140 490 160 {
lab=VSS}
N 490 0 490 10 {
lab=Y}
N 390 -10 390 0 {
lab=Y}
N 590 -10 590 0 {
lab=Y}
N 490 0 590 0 {
lab=Y}
N 490 -100 490 -80 {
lab=VDD}
N 490 -80 590 -80 {
lab=VDD}
N 590 -80 590 -70 {
lab=VDD}
N 580 -70 590 -70 {
lab=VDD}
N 580 -70 580 -40 {
lab=VDD}
N 580 -40 590 -40 {
lab=VDD}
N 390 -80 490 -80 {
lab=VDD}
N 390 -80 390 -70 {
lab=VDD}
N 390 -70 400 -70 {
lab=VDD}
N 400 -70 400 -40 {
lab=VDD}
N 390 -40 400 -40 {
lab=VDD}
N 630 -40 650 -40 {
lab=XB}
N 330 -40 350 -40 {
lab=YB}
N 390 0 490 0 {
lab=Y}
N 390 0 390 20 {
lab=Y}
N 160 20 390 20 {
lab=Y}
N 100 0 330 -0 {
lab=YB}
N 0 0 100 0 {
lab=YB}
N 280 20 280 220 {
lab=Y}
N 200 0 200 220 {
lab=YB}
N 0 -100 490 -100 {
lab=VDD}
N -0 160 490 160 {
lab=VSS}
N -10 140 -0 140 {
lab=VSS}
N -10 110 -10 140 {
lab=VSS}
N -10 110 -0 110 {
lab=VSS}
N 160 -40 160 20 {
lab=Y}
N 160 20 160 110 {
lab=Y}
N 40 110 160 110 {
lab=Y}
N -160 -40 -160 40 {
lab=X}
N -160 40 -40 40 {
lab=X}
N 490 140 500 140 {
lab=VSS}
N 500 110 500 140 {
lab=VSS}
N 490 110 500 110 {
lab=VSS}
N 480 40 480 110 {
lab=VSS}
N 330 -40 330 -0 {
lab=YB}
N 330 -0 330 110 {
lab=YB}
N 330 110 450 110 {
lab=YB}
N 650 -40 650 40 {
lab=XB}
N 530 40 650 40 {
lab=XB}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -120 -40 0 0 {name=M1
L=0.5
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -20 40 2 1 {name=M2
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
C {devices/iopin.sym} 0 160 3 1 {name=VSS lab=VSS}
C {devices/iopin.sym} 0 -100 1 1 {name=VDD lab=VDD}
C {devices/ipin.sym} -160 -40 0 0 {name=p3 lab=X}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 120 -40 0 1 {name=M3
L=0.5
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 20 110 2 0 {name=M4
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 610 -40 0 1 {name=M5
L=0.5
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 510 40 2 0 {name=M6
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
C {devices/ipin.sym} 650 -40 0 1 {name=p6 lab=XB}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 370 -40 0 0 {name=M7
L=0.5
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 470 110 2 1 {name=M8
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
C {devices/opin.sym} 200 220 1 0 {name=p1 lab=YB}
C {devices/opin.sym} 280 220 1 0 {name=p2 lab=Y}
