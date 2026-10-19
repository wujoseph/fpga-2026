set_property PACKAGE_PIN H16 [get_ports CLK]
set_property IOSTANDARD LVCMOS33 [get_ports CLK]
create_clock -period 8.000 -name CLK -waveform {0.000 4.000} -add [get_ports CLK]

set_property IOSTANDARD LVCMOS33 [get_ports {led[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[0]}]
set_property PACKAGE_PIN M14 [get_ports {led[3]}]
set_property PACKAGE_PIN N16 [get_ports {led[2]}]
set_property PACKAGE_PIN P14 [get_ports {led[1]}]
set_property PACKAGE_PIN R14 [get_ports {led[0]}]

set_output_delay -clock [get_clocks CLK] -min -add_delay 0.000 [get_ports {led[*]}]
set_output_delay -clock [get_clocks CLK] -max -add_delay 2.000 [get_ports {led[*]}]


