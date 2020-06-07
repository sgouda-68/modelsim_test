# modelsim_test
Sample files to compile and run RTL design files on modelsim

Files:
	hexTo7Seg.v -> design module
	
	tb_hexTo7Seg.v -> test bench for design
	
	hexTo7Seg_run_modelsim.do -> do file to run on modelsim transcript window
	
	modelsim.ini -> default settings for modelsim (vmap copies it from installation directory)
	
	dc-usage.pdf -> design compiler commands in case you want to try this flow in DC
	
	modelsim_ref_v11p7.pdf -> modelsim commands in case you want to explore

Download modelsim 

Run modelsim

Change directory to the location of the design files in transcript window

In transcript window, execute:
"do hexTo7Seg_run_modelsim.do"

Observe the outputs on waveform and transcript window

"quit -sim" to end simulation
"quit" to close modelsim
