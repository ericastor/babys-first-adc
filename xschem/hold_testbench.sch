v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 920 510 920 520 {
lab=VDD}
N 800 510 800 520 {
lab=VSS}
N 300 120 310 120 {
lab=VDD}
N 300 200 310 200 {
lab=VSS}
N 610 160 750 160 {
lab=out}
N 300 160 310 160 {
lab=in}
N 800 720 800 730 {
lab=VSS}
N 800 650 800 660 {
lab=in}
N 790 300 790 310 {
lab=VSS}
N 790 190 790 240 {
lab=#net1}
N 790 110 790 130 {
lab=VDD}
N 790 160 830 160 {
lab=VSS}
N 1020 730 1020 740 {
lab=VSS}
N 1020 830 1020 840 {
lab=VSS}
N 1020 660 1020 670 {
lab=TRK}
N 1020 760 1020 770 {
lab=HLD}
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
.lib $::SKYWATER_MODELS/sky130.lib.spice ss

"
spice_ignore=false}
C {devices/launcher.sym} 190 30 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {devices/vsource.sym} 920 550 0 0 {name=VDD_src value=3.3 savecurrent=false}
C {devices/gnd.sym} 920 580 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 920 510 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 800 550 0 0 {name=VSS_src value=0 savecurrent=false}
C {devices/gnd.sym} 800 580 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 800 510 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 300 120 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 300 200 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/opin.sym} 680 150 3 0 {name=p5 lab=out}
C {devices/simulator_commands_shown.sym} 20 210 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.control
  let v_start = 0
  let v_stop  = 3.3
  let v_step  = 0.05
  let n_points = floor((v_stop - v_start) / v_step) + 1
  
  let index = 0
  
  * Initialize vectors in the 'const' plot
  let in_vec = v_start + (v_stop - v_start) * vector(n_points) / (n_points - 1)
  let diff_vec = vector($&n_points)

  set temp=75

  while $&index < $&n_points
    destroy all

    alter V4 = in_vec[$&index]
    tran 0.1n 60n
    
    meas tran v_prehold find v(out) at=45n
    meas tran v_earlyhold find v(out) at=55n
    
    let d_val = v_earlyhold - v_prehold
    let const.diff_vec[index] = d_val
    
    let index = index + 1
  end

  let v_tracked = const.in_vec
  let hold_delta = const.diff_vec

  setscale v_tracked hold_delta
  settype voltage v_tracked hold_delta
  plot hold_delta vs v_tracked
.endc
"}
C {devices/lab_pin.sym} 800 730 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 800 650 0 0 {name=p8 sig_type=std_logic lab=in}
C {devices/lab_pin.sym} 300 160 0 0 {name=p9 sig_type=std_logic lab=in}
C {devices/vsource.sym} 800 690 0 0 {name=V4 value=3}
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
C {devices/vsource.sym} 1020 700 0 0 {name=Vclk value="0 ac 1 0
+ pulse(0 3.3 0 0.1ns 0.1ns 50ns 100ns)"}
C {devices/vsource.sym} 1020 800 0 0 {name=Vclk1 value="0 ac 1 0
+ pulse(3.3 0 0 0.1ns 0.1ns 50ns 100ns)"}
C {devices/lab_pin.sym} 1020 740 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1020 840 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1020 660 0 0 {name=p14 sig_type=std_logic lab=TRK}
C {devices/lab_pin.sym} 1020 760 0 0 {name=p15 sig_type=std_logic lab=HLD}
C {devices/lab_pin.sym} 470 80 0 1 {name=p16 sig_type=std_logic lab=HLD}
C {devices/lab_pin.sym} 450 80 0 0 {name=p17 sig_type=std_logic lab=TRK}
C {track_and_hold.sym} 460 160 0 0 {name=x1}
