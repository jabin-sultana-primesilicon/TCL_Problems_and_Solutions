#factorial
# 1st solution
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

# 2nd solution
proc factorial {n} {
    if {$n <= 1} {
        return 1
    } else {
        return [expr {$n * [factorial [expr $n - 1]]}]
    }
}

set number 5
set result [factorial $number]
puts "The factorial of $number is $result"

#3rd solution 
proc factorial {n} {
    set result 1
    for {set i 1} {$i <= $n} {incr i} {
        set result [expr {$result * $i}]
    }
    return $result
}

set number 5
set result [factorial $number]
puts "The factorial of $number is $result"

#4th solution 
proc factorial {n} {
    set result 1
    set i 1
    while {$i <= $n} {
        set result [expr {$result * $i}]
        incr i
    }
    return $result
}

set number 5
set result [factorial $number]
puts "The factorial of $number is $result"

#5th solution
proc factorial {n {acc 1}} {
    if {$n == 0} {
        return $acc
    } else {
        return [factorial [expr {$n - 1}] [expr {$acc * $n}]]
    }
}

set number 5
set result [factorial $number]
puts "The factorial of $number is $result"

