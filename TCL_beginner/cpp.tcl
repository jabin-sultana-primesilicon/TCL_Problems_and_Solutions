# how to take user input
# how to show every single letter in a word

puts "Enter a string: "
gets stdin value
set value [split $value ""]
foreach val $value {
	puts $val
}
