set length 5
set a {0 0 0 0}
set b 0

for {set i 0} {$i<$length} {incr i} {
	puts [lreplace $a 3 3 $b]
       	incr b	
}

