onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /procesador_tb/clk_i
add wave -noupdate /procesador_tb/rst_ni
add wave -noupdate /procesador_tb/wb_dato_o
add wave -noupdate -divider Fetch
add wave -noupdate /procesador_tb/DUT/pc_next
add wave -noupdate /procesador_tb/DUT/pc_current
add wave -noupdate /procesador_tb/DUT/icache/we_i
add wave -noupdate /procesador_tb/DUT/icache/addwrite_i
add wave -noupdate /procesador_tb/DUT/icache/datowrite_i
add wave -noupdate /procesador_tb/DUT/icache/re_i
add wave -noupdate /procesador_tb/DUT/icache/addread_i
add wave -noupdate /procesador_tb/DUT/icache/datoread_o
add wave -noupdate /procesador_tb/DUT/icache/memoria
add wave -noupdate -divider Decode
add wave -noupdate /procesador_tb/DUT/decode/opcode_i
add wave -noupdate /procesador_tb/DUT/decode/regwrite_o
add wave -noupdate /procesador_tb/DUT/decode/alusrc_o
add wave -noupdate -divider RegFile
add wave -noupdate /procesador_tb/DUT/regfile/we_i
add wave -noupdate /procesador_tb/DUT/regfile/addwrite_i
add wave -noupdate /procesador_tb/DUT/regfile/datowrite_i
add wave -noupdate /procesador_tb/DUT/regfile/rers1_i
add wave -noupdate /procesador_tb/DUT/regfile/addreadrs1_i
add wave -noupdate /procesador_tb/DUT/regfile/datoreadrs1_o
add wave -noupdate /procesador_tb/DUT/regfile/rers2_i
add wave -noupdate /procesador_tb/DUT/regfile/addreadrs2_i
add wave -noupdate /procesador_tb/DUT/regfile/datoreadrs2_o
add wave -noupdate /procesador_tb/DUT/regfile/memoria
add wave -noupdate -divider SignExtend
add wave -noupdate /procesador_tb/DUT/sextend/inst_i
add wave -noupdate /procesador_tb/DUT/sextend/inmed_o
add wave -noupdate -divider Execute
add wave -noupdate /procesador_tb/DUT/execute/salrd_o
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {2324 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 227
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {16408 ps}
