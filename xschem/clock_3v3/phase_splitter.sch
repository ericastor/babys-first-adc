v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 40 -40 50 -40 {
lab=CLK}
N 40 50 50 50 {
lab=CLKB}
N -140 0 -140 50 {
lab=#net1}
N -160 0 -140 0 {
lab=#net1}
N -260 0 -240 0 {
lab=X}
N -60 50 -40 50 {
lab=#net2}
N -140 -40 -140 0 {
lab=#net1}
N -140 -40 -40 -40 {}
C {devices/ipin.sym} -260 0 0 0 {name=p1 lab=X}
C {devices/opin.sym} 50 -40 0 0 {name=p2 lab=CLK}
C {devices/opin.sym} 50 50 0 0 {name=p3 lab=CLKB}
C {devices/iopin.sym} -140 -260 0 1 {name=p4 lab=VDDL}
C {devices/iopin.sym} -140 -220 0 1 {name=p5 lab=VSS}
C {sky130_stdcells/clkinv_2.sym} -100 50 0 0 {name=x2 VGND=VSS VNB=VSS VPB=VDDL VPWR=VDDL prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkinv_2.sym} -200 0 0 0 {name=x1 VGND=VSS VNB=VSS VPB=VDDL VPWR=VDDL prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkinv_2.sym} 0 -40 0 0 {name=x3 VGND=VSS VNB=VSS VPB=VDDL VPWR=VDDL prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkinv_2.sym} 0 50 0 0 {name=x4 VGND=VSS VNB=VSS VPB=VDDL VPWR=VDDL prefix=sky130_fd_sc_hd__ }
