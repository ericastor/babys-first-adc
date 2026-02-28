v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -2000 -410 -1200 -10 {flags=graph


ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1


divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="clks
out
out_bar"
color="5 4 7"
dataset=-1
unitx=1
logx=0
logy=0









rawfile=$netlist_dir/testbench.raw
sim_type=tran
y2=3.31
x1=3n
x2=15n
y1=-0.01}
N -820 160 -820 170 {
lab=VDD}
N -940 160 -940 170 {
lab=VSS}
N -1200 400 -1200 410 {
lab=GND}
N -1200 200 -1200 220 {
lab=#net1}
N -940 360 -940 370 {
lab=VSS}
N -940 290 -940 300 {
lab=CLKs}
N -1730 250 -1720 250 {
lab=CLK}
N -1730 270 -1720 270 {
lab=CLKB}
N -1310 240 -1310 250 {
lab=out}
N -1200 130 -1200 140 {
lab=GND}
N -1200 250 -1120 250 {
lab=GND}
N -1140 310 -1120 310 {
lab=GND}
N -1120 250 -1120 310 {
lab=GND}
N -1140 220 -1140 280 {
lab=#net1}
N -1200 220 -1140 220 {
lab=#net1}
N -1200 280 -1200 340 {
lab=#net2}
N -1200 340 -1140 340 {
lab=#net2}
N -1420 200 -1420 230 {
lab=VDD}
N -1420 290 -1420 320 {
lab=VSS}
N -1420 250 -1310 250 {
lab=out}
N -1310 250 -1240 250 {
lab=out}
N -1420 270 -1310 270 {
lab=out_bar}
N -1310 270 -1310 310 {
lab=out_bar}
N -1310 310 -1180 310 {
lab=out_bar}
N -700 160 -700 170 {
lab=VDDL}
N -1730 50 -1720 50 {
lab=CLKs}
N -1420 110 -1410 110 {
lab=CLK}
N -1420 90 -1410 90 {
lab=CLKB}
N -1420 50 -1410 50 {
lab=VDDL}
N -1420 70 -1410 70 {
lab=VSS}
C {devices/code.sym} -2020 140 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt_mm
.include /home/ttuser/pdk/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
.include /home/ttuser/pdk/sky130A/libs.ref/sky130_fd_sc_hvl/spice/sky130_fd_sc_hvl.spice
"
spice_ignore=false}
C {devices/launcher.sym} -1830 140 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {devices/vsource.sym} -820 200 0 0 {name=VDD_src value=3.3 savecurrent=false}
C {devices/gnd.sym} -820 230 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -820 160 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -940 200 0 0 {name=VSS_src value=0 savecurrent=false}
C {devices/gnd.sym} -940 230 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -940 160 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -1420 200 1 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -1420 320 3 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/opin.sym} -1310 240 3 0 {name=p5 lab=out}
C {devices/simulator_commands_shown.sym} -2000 320 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
  .option savecurrents
  .control
  set numruns = 100
  let run = 0

  setplot new
  set mc_plot = $curplot
  let d10 = unitvec($numruns) - 1
  let d10b = unitvec($numruns) - 1
  let d50 = unitvec($numruns) - 1
  let d50b = unitvec($numruns) - 1
  let dt = unitvec($numruns) - 1
  let dtb = unitvec($numruns) - 1
  let d90 = unitvec($numruns) - 1
  let d90b = unitvec($numruns) - 1
  let i_rms = unitvec($numruns) - 1

  dowhile $&run < $numruns
    reset
    set temp = 27
    tran 0.01n 60n
    remzerovec
    write testbench.raw
    set appendwrite

    meas tran dead_10_on TRIG out_bar val=0.33 FALL=1 TARG out val=0.33 RISE=1
    meas tran dead_10_off TRIG out val=0.33 FALL=1 TARG out_bar val=0.33 RISE=1
    let d10 = min(dead_10_on, dead_10_off)
    let d10b = max(dead_10_on, dead_10_off)
    set d10s = $&d10
    set d10bs = $&d10b

    meas tran dead_50_on TRIG out_bar val=1.65 FALL=1 TARG out val=1.65 RISE=1
    meas tran dead_50_off TRIG out val=1.65 FALL=1 TARG out_bar val=1.65 RISE=1
    let d50 = min(dead_50_on, dead_50_off)
    let d50b = max(dead_50_on, dead_50_off)
    set d50s = $&d50
    set d50bs = $&d50b

    meas tran dead_t_on TRIG out_bar val=2.7 FALL=1 TARG out val=2.7 RISE=1
    meas tran dead_t_off TRIG out val=2.97 FALL=1 TARG out_bar val=2.7 RISE=1
    let dt = min(dead_t_on, dead_t_off)
    let dtb = max(dead_t_on, dead_t_off)
    set dts = $&dt
    set dtbs = $&dtb

    meas tran dead_90_on TRIG out_bar val=2.97 FALL=1 TARG out val=2.97 RISE=1
    meas tran dead_90_off TRIG out val=2.97 FALL=1 TARG out_bar val=2.97 RISE=1
    let d90 = min(dead_90_on, dead_90_off)
    let d90b = max(dead_90_on, dead_90_off)
    set d90s = $&d90
    set d90bs = $&d90b

    let i2 = (abs(vdd_src#branch)+abs(vddl_src#branch))^2
    meas tran ms AVG i2
    let i_rms = sqrt(ms)
    set i_rms_s = $&i_rms

*    let i_scaled = 6000*(abs(vdd_src#branch)+abs(vddl_src#branch))
*    plot clk out out_bar i_scaled xl 3.5n 5.5n

    set tran_plot = $curplot
    setplot $mc_plot
    let d10[$&run] = $d10s
    let d10b[$&run] = $d10bs
    let d50[$&run] = $d50s
    let d50b[$&run] = $d50bs
    let dt[$&run] = $dts
    let dtb[$&run] = $dtbs
    let d90[$&run] = $d90s
    let d90b[$&run] = $d90bs
    let i_rms[$&run] = $i_rms_s
    setplot $tran_plot

    let run = run + 1
  end
  setplot $mc_plot
  let min_d10 = minimum(d10)*1e9
  let max_d10 = maximum(d10b)*1e9
  let min_d50 = minimum(d50)*1e9
  let max_d50 = maximum(d50b)*1e9
  let min_dt = minimum(dt)*1e9
  let max_dt = maximum(dtb)*1e9
  let min_d90 = minimum(d90)*1e9
  let max_d90 = maximum(d90b)*1e9
  let min_i_rms = minimum(i_rms)*1e6
  let max_i_rms = maximum(i_rms)*1e6
  echo \\"\\"
  echo \\"Dead time (10%): $&min_d10 - $&max_d10 ns\\"
  echo \\"Dead time (50%): $&min_d50 - $&max_d50 ns\\"
  echo \\"Dead time (2V7): $&min_dt - $&max_dt ns\\"
  echo \\"Dead time (90%): $&min_d90 - $&max_d90 ns\\"
  echo \\"I_rms: $&min_i_rms - $&max_i_rms uA\\"
  .endc
"}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -1220 250 0 0 {name=M1
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
C {devices/res.sym} -1200 370 0 0 {name=R1
value=1
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} -940 330 0 0 {name=Vclk value="pulse(0 1.8 3.75ns 0.1ns 0.1ns 7.5ns 15ns)"}
C {devices/lab_pin.sym} -940 370 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -940 290 0 0 {name=p14 sig_type=std_logic lab=CLKs}
C {devices/lab_pin.sym} -1730 50 3 1 {name=p16 sig_type=std_logic lab=CLKs}
C {devices/gnd.sym} -1200 410 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} -1200 170 2 0 {name=V_test value=3.3 savecurrent=false}
C {devices/gnd.sym} -1200 130 2 0 {name=l4 lab=GND}
C {devices/gnd.sym} -1120 250 3 1 {name=l5 lab=GND}
C {clock_3v3/clock_3v3.sym} -1570 260 0 0 {name=x1
schematic=clock_3v3_parax.sim
spice_sym_def="tcleval(.include [file normalize ../mag/clock_3v3.sim.spice])"
tclcommand="textwindow [file normalize ../mag/clock_3v3.sim.spice]"}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -1160 310 0 0 {name=M2
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
C {devices/opin.sym} -1310 310 1 0 {name=p6 lab=out_bar}
C {devices/vsource.sym} -700 200 0 0 {name=VDDL_src value=1.8 savecurrent=false}
C {devices/gnd.sym} -700 230 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} -700 160 0 0 {name=p7 sig_type=std_logic lab=VDDL}
C {devices/lab_pin.sym} -1410 110 0 1 {name=p8 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} -1410 90 0 1 {name=p9 sig_type=std_logic lab=CLKB}
C {devices/lab_pin.sym} -1730 250 0 0 {name=p10 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} -1730 270 0 0 {name=p11 sig_type=std_logic lab=CLKB}
C {clock_3v3/phase_splitter.sym} -1570 80 0 0 {name=x2}
C {devices/lab_pin.sym} -1410 50 0 1 {name=p13 sig_type=std_logic lab=VDDL}
C {devices/lab_pin.sym} -1410 70 0 1 {name=p15 sig_type=std_logic lab=VSS}
