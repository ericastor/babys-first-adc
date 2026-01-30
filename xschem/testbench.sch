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
in
out_parax"
color="5 4 8"
dataset=-1
unitx=1
logx=0
logy=0





x2=300n
y1=0

x1=0
rawfile=$netlist_dir/testbench.raw
sim_type=tran
y2=3.3}
B 2 890 -420 1690 -20 {flags=graph


ypos1=0
ypos2=2
divy=5

unity=1
x1=0

divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0
node="\\"in (dB);in_spec db20()\\"
\\"out (dB);out_spec db20()\\"
\\"out (dB, w/ parax);out_parax_spec db20()\\""
color="4 6 8"
dataset=-1
unitx=1
logx=0
logy=0
sim_type=sp
rawfile=$netlist_dir/testbench.raw

y1=-150
digital=0
subdivy=4

y2=10
x2=33Meg}
N 1110 510 1110 520 {
lab=VDD}
N 990 510 990 520 {
lab=VSS}
N 300 120 310 120 {
lab=VDD}
N 300 200 310 200 {
lab=VSS}
N 610 160 750 160 {
lab=out}
N 300 160 310 160 {
lab=in}
N 990 720 990 730 {
lab=VSS}
N 990 650 990 660 {
lab=in}
N 790 300 790 310 {
lab=GND}
N 790 190 790 240 {
lab=#net1}
N 790 110 790 130 {
lab=#net2}
N 1210 730 1210 740 {
lab=VSS}
N 1210 830 1210 840 {
lab=VSS}
N 1210 660 1210 670 {
lab=CLK}
N 1210 760 1210 770 {
lab=CLKB}
N 470 80 470 90 {
lab=CLK}
N 450 80 450 90 {
lab=CLKB}
N 680 150 680 160 {
lab=out}
N 790 40 790 50 {
lab=GND}
N 790 160 870 160 {
lab=GND}
N 1070 120 1080 120 {
lab=VDD}
N 1070 200 1080 200 {
lab=VSS}
N 1380 160 1520 160 {
lab=out_parax}
N 1070 160 1080 160 {
lab=in}
N 1560 300 1560 310 {
lab=GND}
N 1560 190 1560 240 {
lab=#net3}
N 1560 110 1560 130 {
lab=#net4}
N 1240 80 1240 90 {
lab=CLK}
N 1220 80 1220 90 {
lab=CLKB}
N 1450 150 1450 160 {
lab=out_parax}
N 1560 40 1560 50 {
lab=GND}
N 1560 160 1640 160 {
lab=GND}
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
C {devices/vsource.sym} 1110 550 0 0 {name=VDD_src value=3.3 savecurrent=false}
C {devices/gnd.sym} 1110 580 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 1110 510 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 990 550 0 0 {name=VSS_src value=0 savecurrent=false}
C {devices/gnd.sym} 990 580 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 990 510 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 300 120 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 300 200 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/opin.sym} 680 150 3 0 {name=p5 lab=out}
C {devices/simulator_commands_shown.sym} 20 210 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
  .option savecurrents
  .control
    tran 0.05n 6u
    remzerovec
    write testbench.raw

    let lin-tstart = 12.5n
    let lin-tstep = 15n
    let in_spec = in - 1.65
    let out_spec = out - 1.65
    let out_parax_spec = out_parax - 1.65
    linearize in_spec out_spec out_parax_spec
    fft in_spec out_spec out_parax_spec
    set appendwrite
    write testbench.raw
    
    meas sp peak_noise MAX vdb(out_parax_spec) from=1Meg to=6Meg
    meas sp peak_noise_pure MAX vdb(out_spec) from=1Meg to=6Meg
    echo \\"Peak noise < 6Meg: $&peak_noise dB (w/o parax: $&peak_noise_pure dB)\\"

    meas sp peak_harmonic MAX vdb(out_parax_spec) from=10Meg to=33Meg
    meas sp peak_harmonic_pure MAX vdb(out_spec) from=10Meg to=33Meg
    echo \\"Peak harmonic: $&peak_harmonic dB (w/o parax: $&peak_harmonic_pure dB)\\"

    *setplot tran1
    *let s = (VDD_src#branch)^2
    *meas tran ms AVG s
    *let rms = 1000*sqrt(ms)
    *echo \\"RMS current (from VDD): $&rms mA\\"
  .endc
"}
C {devices/lab_pin.sym} 990 730 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 990 650 0 0 {name=p8 sig_type=std_logic lab=in}
C {devices/lab_pin.sym} 300 160 0 0 {name=p9 sig_type=std_logic lab=in}
C {devices/vsource.sym} 990 690 0 0 {name=V4 value="0 ac 1 0
+ sin(1.65 1.65 7e6 0 0 90)"}
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
C {devices/res.sym} 790 270 0 0 {name=R1
value=1
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} 1210 700 0 0 {name=Vclk value="0 ac 1 0
+ pulse(3.3 0 0 0.1ns 0.1ns 7.5ns 15ns)"}
C {devices/vsource.sym} 1210 800 0 0 {name=Vclk1 value="0 ac 1 0
+ pulse(0 3.3 0 0.1ns 0.1ns 7.5ns 15ns)"}
C {devices/lab_pin.sym} 1210 740 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1210 840 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1210 660 0 0 {name=p14 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 1210 760 0 0 {name=p15 sig_type=std_logic lab=CLKB}
C {devices/lab_pin.sym} 470 80 0 1 {name=p16 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 450 80 0 0 {name=p17 sig_type=std_logic lab=CLKB}
C {devices/gnd.sym} 790 310 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 790 80 2 0 {name=V_test value=3.3 savecurrent=false}
C {devices/gnd.sym} 790 40 2 0 {name=l4 lab=GND}
C {devices/gnd.sym} 870 160 3 1 {name=l5 lab=GND}
C {devices/lab_pin.sym} 1070 120 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1070 200 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/opin.sym} 1450 150 3 0 {name=p11 lab=out_parax}
C {devices/lab_pin.sym} 1070 160 0 0 {name=p18 sig_type=std_logic lab=in}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1540 160 0 0 {name=M2
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
C {devices/res.sym} 1560 270 0 0 {name=R2
value=1
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 1240 80 0 1 {name=p19 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 1220 80 0 0 {name=p20 sig_type=std_logic lab=CLKB}
C {devices/gnd.sym} 1560 310 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} 1560 80 2 0 {name=V_test1 value=3.3 savecurrent=false}
C {devices/gnd.sym} 1560 40 2 0 {name=l7 lab=GND}
C {devices/gnd.sym} 1640 160 3 1 {name=l8 lab=GND}
C {track_and_hold.sym} 460 160 0 0 {name=x1}
C {track_and_hold.sym} 1230 160 0 0 {name=x2
schematic=track_and_hold_parax.sim
spice_sym_def="tcleval(.include [file normalize ../mag/track_and_hold.sim.spice])"
tclcommand="textwindow [file normalize ../mag/track_and_hold.sim.spice]"
}
