transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/OneDrive\ -\ Instituto\ Politecnico\ Nacional/ESCOM/6TO\ SEMESTRE/Sistemas\ Embebidos/1er\ Parcial/Procesador {E:/OneDrive - Instituto Politecnico Nacional/ESCOM/6TO SEMESTRE/Sistemas Embebidos/1er Parcial/Procesador/registerfile.v}
vlog -vlog01compat -work work +incdir+E:/OneDrive\ -\ Instituto\ Politecnico\ Nacional/ESCOM/6TO\ SEMESTRE/Sistemas\ Embebidos/1er\ Parcial/Procesador {E:/OneDrive - Instituto Politecnico Nacional/ESCOM/6TO SEMESTRE/Sistemas Embebidos/1er Parcial/Procesador/procesador.v}
vlog -vlog01compat -work work +incdir+E:/OneDrive\ -\ Instituto\ Politecnico\ Nacional/ESCOM/6TO\ SEMESTRE/Sistemas\ Embebidos/1er\ Parcial/Procesador {E:/OneDrive - Instituto Politecnico Nacional/ESCOM/6TO SEMESTRE/Sistemas Embebidos/1er Parcial/Procesador/memoria.v}
vlog -vlog01compat -work work +incdir+E:/OneDrive\ -\ Instituto\ Politecnico\ Nacional/ESCOM/6TO\ SEMESTRE/Sistemas\ Embebidos/1er\ Parcial/Procesador {E:/OneDrive - Instituto Politecnico Nacional/ESCOM/6TO SEMESTRE/Sistemas Embebidos/1er Parcial/Procesador/decodificador.v}
vlog -vlog01compat -work work +incdir+E:/OneDrive\ -\ Instituto\ Politecnico\ Nacional/ESCOM/6TO\ SEMESTRE/Sistemas\ Embebidos/1er\ Parcial/Procesador {E:/OneDrive - Instituto Politecnico Nacional/ESCOM/6TO SEMESTRE/Sistemas Embebidos/1er Parcial/Procesador/alu.v}
vlog -vlog01compat -work work +incdir+E:/OneDrive\ -\ Instituto\ Politecnico\ Nacional/ESCOM/6TO\ SEMESTRE/Sistemas\ Embebidos/1er\ Parcial/Procesador {E:/OneDrive - Instituto Politecnico Nacional/ESCOM/6TO SEMESTRE/Sistemas Embebidos/1er Parcial/Procesador/signextend.v}

