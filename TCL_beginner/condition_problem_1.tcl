# the index value of a list is equal to b variable

set a {20 30 59 90}

set b 30

if {[lindex $a 1] == $b} {
	puts "the number is equal"
}
