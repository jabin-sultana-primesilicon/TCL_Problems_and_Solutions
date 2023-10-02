set sum 0
set myList {10 20 30 40 50}
foreach num $myList {
	set sum [expr $sum + $num]
}
puts $sum
