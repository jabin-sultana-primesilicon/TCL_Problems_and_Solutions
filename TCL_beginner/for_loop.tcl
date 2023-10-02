#how to print 10 to 1
#1st solution
for {set i 10} {$i >= 1} {incr i -1} {
	puts $i
}
#2nd solution
set i 10
while {$i >= 1} {
    puts $i
    incr i -1
}
#3rd solution
proc printNumbers {n} {
    if {$n >= 1} {
        puts $n
        printNumbers [expr {$n - 1}]
    }
}

set number 10
printNumbers $number

#4th solution
set numbers [list 10 9 8 7 6 5 4 3 2 1]
foreach num [lreverse $numbers] {
    puts $num
}
#5th soltuion 
set numbers [lreverse [list 1 2 3 4 5 6 7 8 9 10]]
for {set i 0} {$i < [llength $numbers]} {incr i} {
    puts [lindex $numbers $i]
}

