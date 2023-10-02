#insert a list
puts "Enter a list: "
 
#Get input from standard input and store in $value"
gets stdin value

#output the result
puts "You entered: $value"

set sum 0
set squarenum 0.0
set length [llength $value]
puts $length
#summation of list element
foreach num $value {
	set sum [expr $sum + $num];
	set squarenum [expr $squarenum + [expr {$num ** 2}]];
}
puts "The summation is: $sum"
puts "The square value is $squarenum"

# calculate average value
set avg [expr $sum / $length]
puts "The average value is: $avg"
set SD 0.0
set stddev 0.0
#calculate standard deviation
foreach val $value {
	set SD [expr (($val- $avg) ** 2) + $SD];
}
set stddev [expr {sqrt ($SD/($length))} ]
puts "The value of standard deviation is $stddev"
