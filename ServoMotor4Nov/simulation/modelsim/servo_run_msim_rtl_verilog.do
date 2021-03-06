transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/juanj/OneDrive/Desktop/Ingenieria\ Electronica/Componente\ Teorico-Practico/Digital\ II/Laboratorio/ServoMotor4Nov {C:/Users/juanj/OneDrive/Desktop/Ingenieria Electronica/Componente Teorico-Practico/Digital II/Laboratorio/ServoMotor4Nov/servo.v}
vlog -vlog01compat -work work +incdir+C:/Users/juanj/OneDrive/Desktop/Ingenieria\ Electronica/Componente\ Teorico-Practico/Digital\ II/Laboratorio/ServoMotor4Nov {C:/Users/juanj/OneDrive/Desktop/Ingenieria Electronica/Componente Teorico-Practico/Digital II/Laboratorio/ServoMotor4Nov/divisorfrec.v}
vlog -vlog01compat -work work +incdir+C:/Users/juanj/OneDrive/Desktop/Ingenieria\ Electronica/Componente\ Teorico-Practico/Digital\ II/Laboratorio/ServoMotor4Nov {C:/Users/juanj/OneDrive/Desktop/Ingenieria Electronica/Componente Teorico-Practico/Digital II/Laboratorio/ServoMotor4Nov/divisorfrecgen.v}
vlog -vlog01compat -work work +incdir+C:/Users/juanj/OneDrive/Desktop/Ingenieria\ Electronica/Componente\ Teorico-Practico/Digital\ II/Laboratorio/ServoMotor4Nov {C:/Users/juanj/OneDrive/Desktop/Ingenieria Electronica/Componente Teorico-Practico/Digital II/Laboratorio/ServoMotor4Nov/generadorpwm.v}
vlog -vlog01compat -work work +incdir+C:/Users/juanj/OneDrive/Desktop/Ingenieria\ Electronica/Componente\ Teorico-Practico/Digital\ II/Laboratorio/ServoMotor4Nov {C:/Users/juanj/OneDrive/Desktop/Ingenieria Electronica/Componente Teorico-Practico/Digital II/Laboratorio/ServoMotor4Nov/divisorfrec1.v}

vlog -vlog01compat -work work +incdir+C:/Users/juanj/OneDrive/Desktop/Ingenieria\ Electronica/Componente\ Teorico-Practico/Digital\ II/Laboratorio/ServoMotor4Nov {C:/Users/juanj/OneDrive/Desktop/Ingenieria Electronica/Componente Teorico-Practico/Digital II/Laboratorio/ServoMotor4Nov/servo_TB.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  servo_TB

add wave *
view structure
view signals
run -all
