set a 10 
while {$a >= 1} {
   puts $a
   incr a -1
}

#another solution
for {set a 10} {$a >= 1} {incr a -1} {
    puts $a
}



