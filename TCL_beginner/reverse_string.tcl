set a "helloworld"
puts $a
set length1 [string length $a]
puts $length1

set length2 11
for {set i 0} {$i < $length2} {incr i} {
	puts "$i"

}
foreach var $a {
	puts $var
}
