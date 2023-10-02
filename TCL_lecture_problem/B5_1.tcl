# loop
set a {0 0 0 0}
set length [llength $a]
puts $length
set b 0 
for {set i 0} {$i < $length} {incr i} {
	for {set j 0} {$j<$length } {incr j} {	
	puts [set a [lreplace $a $j $j $b]]
	}	
#	puts "\n"o
       set b [expr {$b+1}]
}

