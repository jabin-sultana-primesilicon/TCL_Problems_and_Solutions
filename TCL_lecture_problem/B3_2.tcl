#factorial
set fact 1
#insert a number 
puts "Enter a number: "

#Get input from standard input and store in $value"
gets stdin value

#output the result
puts "You entered: $value"
set i 1
while {$value>=1} {
	set fact [expr $fact * $i]
	puts "The factorial of $i is $fact"
        set value [expr $value -1]
	incr i	
}

# another solution
proc factorial {n} {
    set result 1
    for {set i 1} {$i <= $n} {incr i} {
        set result [expr {$result * $i}]
    }
    return $result
}

# Test the factorial procedure
set num [gets stdin]
set result [factorial $num]
puts "The factorial of $num is $result"

