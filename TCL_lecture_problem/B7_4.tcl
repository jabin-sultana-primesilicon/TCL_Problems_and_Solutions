#open the file
puts "Enter a month: "
gets stdin value
set a {}
set f [open birth_date.txt r];
while {![eof $f]} {
	gets $f line
#puts $line
	if {$value == [lindex $line 2]} {
		#set a [lrange $line 0 [expr [llength $line] -1]]
		puts "[lrange $line 0 1]"
	}
}
#puts $a
close $f
