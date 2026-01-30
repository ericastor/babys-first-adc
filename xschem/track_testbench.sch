v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 60 -420 860 -20 {flags=graph


ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1


divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="out
in"
color="5 4"
dataset=-1
unitx=1
logx=0
logy=0





x2=300n
y1=0
y2=3.3
x1=0
rawfile=$netlist_dir/track_testbench.raw
sim_type=tran}
B 2 890 -420 1690 -20 {flags=graph


ypos1=0
ypos2=2
divy=5

unity=1
x1=0
x2=100Meg
divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0
node="\\"in (dB);in_spec db20()\\"
\\"out (dB);out_spec db20()\\""
color="4 6"
dataset=-1
unitx=1
logx=0
logy=0
sim_type=sp
rawfile=$netlist_dir/track_testbench.raw
y2=10
y1=-150
digital=0
subdivy=4}
N 800 510 800 520 {
lab=VDD}
N 680 510 680 520 {
lab=VSS}
N 300 120 310 120 {
lab=VDD}
N 300 200 310 200 {
lab=VSS}
N 610 160 750 160 {
lab=out}
N 300 160 310 160 {
lab=in}
N 680 720 680 730 {
lab=VSS}
N 680 650 680 660 {
lab=in}
N 790 300 790 310 {
lab=VSS}
N 790 190 790 240 {
lab=#net1}
N 790 110 790 130 {
lab=VDD}
N 790 160 830 160 {
lab=VSS}
N 900 730 900 740 {
lab=VSS}
N 900 830 900 840 {
lab=VSS}
N 900 660 900 670 {
lab=HLD}
N 900 760 900 770 {
lab=TRK}
N 470 80 470 90 {
lab=HLD}
N 450 80 450 90 {
lab=TRK}
N 680 150 680 160 {
lab=out}
C {devices/code.sym} 0 30 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/launcher.sym} 190 30 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {devices/vsource.sym} 800 550 0 0 {name=VDD_src value=3.3 savecurrent=false}
C {devices/gnd.sym} 800 580 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 800 510 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 680 550 0 0 {name=VSS_src value=0 savecurrent=false}
C {devices/gnd.sym} 680 580 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 680 510 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 300 120 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 300 200 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/opin.sym} 680 150 3 0 {name=p5 lab=out}
C {devices/simulator_commands_shown.sym} 20 210 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
  .option savecurrents
  .control
    tran 0.05n 3u
    remzerovec
    write track_testbench.raw

    let in_spec = in - 1.65
    let out_spec = out - 1.65
    let lin-tstart = 55n
    linearize in_spec out_spec
    fft in_spec out_spec
    set appendwrite
    write track_testbench.raw
  .endc
"}
C {devices/lab_pin.sym} 680 730 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 680 650 0 0 {name=p8 sig_type=std_logic lab=in}
C {devices/lab_pin.sym} 300 160 0 0 {name=p9 sig_type=std_logic lab=in}
C {devices/vsource.sym} 680 690 0 0 {name=V4 value="0 ac 1 0
+ sin(1.65 1.65 33e6 0 0 0)"}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 770 160 0 0 {name=M1
L=0.5
W=20
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
C {devices/lab_pin.sym} 790 110 0 1 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 790 310 0 1 {name=p10 sig_type=std_logic lab=VSS}
C {devices/res.sym} 790 270 0 0 {name=R1
value=1
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 830 160 0 1 {name=p11 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 900 700 0 0 {name=Vclk value="0 ac 1 0
+ pwl(0 3.3 50n 3.3 50.1n 0)"}
C {devices/vsource.sym} 900 800 0 0 {name=Vclk1 value="0 ac 1 0
+ pwl(0 0 50n 0 50.1n 3.3)"}
C {devices/lab_pin.sym} 900 740 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 900 840 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 900 660 0 0 {name=p14 sig_type=std_logic lab=HLD}
C {devices/lab_pin.sym} 900 760 0 0 {name=p15 sig_type=std_logic lab=TRK}
C {devices/lab_pin.sym} 470 80 0 1 {name=p16 sig_type=std_logic lab=HLD}
C {devices/lab_pin.sym} 450 80 0 0 {name=p17 sig_type=std_logic lab=TRK}
C {track_and_hold.sym} 460 160 0 0 {name=x2
schematic=track_and_hold_parax.sim
spice_sym_def="tcleval(.include [file normalize ../mag/track_and_hold.sim.spice])"
tclcommand="textwindow [file normalize ../mag/track_and_hold.sim.spice]"
}
