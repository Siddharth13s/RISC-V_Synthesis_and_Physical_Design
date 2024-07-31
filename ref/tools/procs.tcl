# need to create a keyboard shortcut...
#gui_set_setting -window [gui_get_current_window -types Layout -mru] -setting showWiringGrid -value true                                                                   

set gui_online_browser firefox

#
# Define some useful aliases and functions
#
catch {unset al}
set al(l) list_blocks
set al(o) open_block
set al(rq) "report_qor -summary -include {setup hold electrical_drc design_stats}"
set al(h) history
set al(ga) get_attribute
set al(sa) set_attribute
set al(gs) get_selection
set al(cs) change_selection
set al(csa) {change_selection -add}
set al(cb) current_block
set al(l) list_blocks
set al(o) open_block
set al(rt) {report_timing -cap -tran -sign 3}
set al(rtm) {report_timing -cap -tran -sign 3 -delay min}
set al(rc) {report_constraints -all_violators}
set al(rcd) {report_constraints -all_violators -max_delay}
set al(_all_active_scenarios) {get_scenarios -filter "active==true"}
set al(_full_lib_report) {report_lib_cells -columns {name area dont_touch valid_purposes} -objects  [get_lib_cells]}
set al(v) {view}
set al(vv) {view exec cat}


echo
echo "**********************************************************"
echo "Fusion Compiler Workshop\nThe following aliases are available:"
foreach n [lsort [array names al]] {
	echo [format " %-30s%s" $n $al($n)]
	alias $n $al($n)
}

create_command_group {ces} -info "Fusion Compiler workshop - useful procedures"

proc ces_help {} {
	echo "\n"
	echo "ces: Fusion Compiler Workshop - useful aliases"
	uplevel {
		foreach n [lsort [array names al]] {
			echo [format " %-30s%s" $n $al($n)]
			alias $n $al($n)
		}
	}
	echo "\n"
	help ces
}
define_proc_attributes ces_help \
	-info "print list of CES useful aliases and procedures" \
	-command_group ces \
	-define_args {}

# Set an app option
proc sao {args} {
	set_app_options -list $args
}
# Set an app option to true
proc sat {args} {
	set_app_options -name $args -value true
}
# Set an app option to false
proc saf {args} {
	set_app_options -name $args -value false
}
# Report an app option
proc rao {args} {
	report_app_options $args
}

proc _all_macro_cells {{col ""}} {
	if {[sizeof_collection $col]} {
		return [get_cells -hierarchical -filter "is_hard_macro && !is_physical_only" -of_objects $col]
	} else {
		return [get_cells -hierarchical -filter "is_hard_macro && !is_physical_only"]
	}
}
define_proc_attributes _all_macro_cells \
	-info "returns a collection of all hard macros (non-physical-only)" \
	-command_group ces \
	-define_args {
		{cells "a set of cells to filter for hard macros" cells string optional}
	}

proc _set_active_scenarios {args} {
        parse_proc_arguments -args $args results

	if {[info exists results(-all)]} {
		set_scenario_status -active true [get_scenarios]
	} elseif {[info exists results(scenarios)] && [llength $results(scenarios)]} {
		set_scenario_status -active true $results(scenarios)
		set disable_scen [remove_from_collection [get_scenarios] [get_scenarios $results(scenarios)]]
		if {[sizeof_collection $disable_scen]} {set_scenario_status -active false $disable_scen}
	} else {
		get_scenarios -filter "active==true"
	}
}
define_proc_attributes _set_active_scenarios \
	-info "specifies the active scenarios (all others become inactive)" \
	-command_group ces \
	-define_args {
		{-all "activate all scenarios" "" boolean optional}
		{scenarios "specify set of scenarios to be active" scenarios string optional}
	}

proc _foreach_scenario {args} {
	foreach_in_collection scen [all_scenarios] {
		current_scenario $scen
		uplevel eval $args
	}
}
define_proc_attributes _foreach_scenario \
	-info "iterate through all scenarios and apply <args>" \
	-command_group ces \
	-define_args {
		{args "commands to be applied in each scenario" args string required}
	}

proc _foreach_active_scenario {args} {
	foreach_in_collection scen [get_scenarios -filter "active==true"] {
		current_scenario $scen
		uplevel eval $args
	}
}
define_proc_attributes _foreach_active_scenario \
	-info "iterate through all active scenarios and apply <args>" \
	-command_group ces \
	-define_args {
		{args "commands to be applied in each scenario" args string required}
	}

proc measure_time {args} {
        set time [clock seconds]
        set command [join $args]
        echo "##### Started timer for command \"$command\""
        uplevel $args
        set stop_time [clock seconds]
        set hrs  [expr ($stop_time - $time) / 60 / 60]
        set mins [expr ($stop_time - $time) / 60 % 60]
        set secs [expr ($stop_time - $time) % 60]
        echo [format "####----#### Runtime: %3d:%02d:%02d  for command \"$command\"" $hrs $mins $secs]
}
define_proc_attributes measure_time \
        -info "Run a command while measuring the time it takes" \
        -command_group ces \
        -define_args {
                {script "Tcl-commands to time (and run)" args}
        }

proc _run_compile_stage {args} {
        parse_proc_arguments -args $args options
	set stage $options(stage)
	set command "compile_fusion"
	if {[info exists options(-logfile)]} {
		set logfile $options(-logfile)
	} else {
		set logfile "$command.$stage.log"
	}

	if {[llength [info proc measure_time]]} { set command "measure_time $command" }
	redirect -tee $logfile { eval $command -from $stage -to $stage }
}
define_proc_attributes _run_compile_stage \
	-info "run and log a single compile_fusion stage" \
	-command_group ces \
	-define_args {
		{stage "compile_fusion stage to run" stage one_of_string {required value_help {values {initial_map logic_opto initial_place initial_drc initial_opto final_place final_opto}}} }
		{-logfile "name of log file - default is compile_fusion.<stage>.log" "" string optional}
	}

proc _run_compile_stage_save {args} {
        parse_proc_arguments -args $args options
	set stage $options(stage)
	set command "compile_fusion"
	if {[info exists options(-logfile)]} {
		set logfile $options(-logfile)
	} else {
		set logfile "$command.$stage.log"
	}

	if {[llength [info proc measure_time]]} { set command "measure_time $command" }
	redirect -tee $logfile { eval $command -from $stage -to $stage }
	save_block -as $stage
}
define_proc_attributes _run_compile_stage_save \
	-info "run and log a single compile_fusion stage, then save" \
	-command_group ces \
	-define_args {
		{stage "compile_fusion stage to run" stage one_of_string {required value_help {values {initial_map logic_opto initial_place initial_drc initial_opto final_place final_opto}}} }
		{-logfile "name of log file - default is compile_fusion.<stage>.log" "" string optional}
	}


proc gui {} {
        if {$::in_gui_session == false} {
                gui_start
        } else {
                gui_stop
                echo "... or just 'gui'"
        }
}
define_proc_attributes gui \
        -info "Start or stop the GUI" \
	-command_group ces

#
# Always Ask
# This useful procedure is on solvnet, Doc Id  012959
#
proc aa {args} {

        parse_proc_arguments -args $args results
        set pat $results(pattern)

        echo "******** Commands    ***********"
        
	redirect -variable treport "help *$pat*"
	if { ! [regexp "CMD-040" $treport]} { echo $treport }

        if {$::synopsys_program_name == "icc2_shell" || $::synopsys_program_name == "icc2_lm_shell" || $::synopsys_program_name == "fc_shell"} {
		echo "******** App Options ***********"
		redirect -variable treport "report_app_options *$pat*"
		set treport [split $treport "\n"] 
		set treport [lrange $treport 6 [expr [llength $treport] - 3]]
		set treport [join $treport "\n "]
		if {! [regexp "No options matched the specified pattern" $treport]} { echo " $treport" }
        }

	echo "******** Variables   ***********"
	redirect -variable treport "printvar *$pat*"
	if { ! [regexp "CMD-040" $treport]} { echo $treport }

        if {[info exists results(-verbose)]} {
                echo "******** apropos     ***********"
                redirect -variable treport "apropos *$pat*"
		if { ! [regexp "CMD-040" $treport]} { echo $treport }
        }
}; # end proc

define_proc_attributes aa \
	-info "always ask - Searches Synopsys help for both commands and application options/variables" \
	-command_group ces \
	-define_args {
		{pattern "Pattern to search for" pattern string required}
		{-verbose "Search -help as well" "" boolean optional}
	}

set VIEW_COMMAND "../ref/tools/view.tk"

# Get command results/reports in separate graphical tk window
# This expects view.tk to be in the path, which is the other half
# of this procedure!
# Examples: view man compile,  view report_timing -max_paths 20
#======================================================  
#Compatibility with VCS/DVE:
if {[info exists uclidir]} {
	set view_proc_name tview
} else {
	set view_proc_name view
}

proc $view_proc_name {args} {
	global VIEW_COMMAND

	if {$args == ""} {
		puts "Please provide a command."
		return
	}
	
	if { [catch {open "| $VIEW_COMMAND \"$args\"" w} PIPE] } {
		return "Can't open pipe for '$VIEW_COMMAND'"
	}
	redirect -channel $PIPE {uplevel $args}
	flush $PIPE
}
if {$view_proc_name == "view"} {
	define_proc_attributes $view_proc_name \
	-info "Display output of any command in a separate Tk window." \
	-command_group ces \
	-define_args { {args "Command with arguments" args} }
}


echo "**********************************************************"
help ces


