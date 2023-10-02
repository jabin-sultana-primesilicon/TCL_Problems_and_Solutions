#not clear this
puts "Guess a number between 0-50"
gets stdin value
puts "You entered: $value."

set num [expr int(rand() * 100) % 50]
set i
puts "the random variable is: $num"
while {$value == $num} {
if {$num > $value } {
	puts "Your guess is higher than the number. Please try again..."

} elseif {$value == $num} {
	puts "Your guess is equal to the number."
} else {
	puts "Your guess is lower than the number."
}
 incr i
}
puts 
