
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name typing_tutor -dir "C:/Users/nogac/Desktop/studejszyn_sem6/UCiSW2/typing_tutor/typing_tutor/planAhead_run_3" -part xc3s500efg320-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/nogac/Desktop/studejszyn_sem6/UCiSW2/typing_tutor/typing_tutor/typing_tutor.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/nogac/Desktop/studejszyn_sem6/UCiSW2/typing_tutor/typing_tutor} {SDC_FileReader} {VGAtxt48x20} }
set_property target_constrs_file "GenIO.ucf" [current_fileset -constrset]
add_files [list {GenIO.ucf}] -fileset [get_property constrset [current_run]]
link_design
