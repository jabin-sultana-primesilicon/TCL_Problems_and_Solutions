#fabonacci series

#user input
puts "Enter a value: "

#Get input from standard input and store in $value
gets stdin value1

proc fab_func {value} {
set num1 0;  #a
set num2 1; #b
set fab "" 

for {set i 0} {$i <= $value} {incr i} {
	append fab "$num1 "
	set num [expr $num1 + $num2];  #c
	set num1 $num2; # a=b
	set num2 $num; # b=c
}
	puts $fab
}
fab_func $value1
