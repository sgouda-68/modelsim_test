# Dump log on transcript
transcript on

# Delete old db files
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}

# Create design library (option if you have the environment setup)
vlib rtl_work

# Copy modelsim initialization file from installation directory
vmap work rtl_work

# Compile command
vlog -vlog01compat -work work hexTo7Seg.v tb_hexTo7Seg.v

# Start simulation command on Test Bench (TB) module
# You can remove "-gui" from the vsim command in case you don't want gui
vsim -gui work.stimulus

# Add signals to waveform for observation on gui
# Can skip this if you are not using "-gui"
add wave -position insertpoint  sim:/stimulus/x sim:/stimulus/z

# Run the simulation and observe the outputs on waveform (gui) or transcript window
run 400ns

# View the entire wave window in gui
# Can skip this if you are not using "-gui"
wave zoom full