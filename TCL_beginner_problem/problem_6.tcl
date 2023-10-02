set f [open "input6.txt" r]
set count 0
while {[gets $f line]>=0} {
	set a [string length $line] 
	for {set i 0} {$i < $a} {incr i} {
		set b [string index $line $i]
		set c [string tolower $b]
		if {![regexp {a} $c] && ![regexp {e} $c] && ![regexp {i} $c] && ![regexp {o} $c] && ![regexp {u} $c] && ![regexp { } $c] && ![regexp {\.} $c]} {
		      incr count
		}
	}
}
puts "Number of consonants: $count"
close $f

#another solution
proc countConsonants {string} {
    set consonants "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ"
    set count 0

    foreach char [split $string ""] {
        if {[string first $char $consonants] != -1} {
            incr count
        }
    }
    return $count
}
set input "The man is a thief."
set consonantCount [countConsonants $input]
puts "Total number of consonants: $consonantCount"

