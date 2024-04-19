set_global_assignment -entity "clockslow" -library "lib_clockslow" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "clockslow" -library "lib_clockslow" -name IP_TOOL_VERSION "20.1"
set_global_assignment -entity "clockslow" -library "lib_clockslow" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_clockslow" -name SPD_FILE [file join $::quartus(sip_path) "../clockslow.spd"]
set_global_assignment -library "lib_clockslow" -name MISC_FILE [file join $::quartus(sip_path) "../../clockslow.qsys"]

set_global_assignment -library "lib_clockslow" -name MISC_FILE [file join $::quartus(sip_path) "clockslow.v"]
set_global_assignment -library "lib_clockslow" -name MISC_FILE [file join $::quartus(sip_path) "submodules/clockslow_altclkctrl_0.v"]
