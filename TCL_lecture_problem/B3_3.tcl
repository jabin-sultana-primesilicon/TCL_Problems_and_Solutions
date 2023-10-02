# open the file
# Read the text.txt file line by line 
set f [open test.txt r]; #read only the file
set data "summer"
set lineNumber 0
set count 1
set temp ""
while {[gets $f line] >=0} {
        incr lineNumber
	if {[regexp -nocase "summer" $line]} {
		#use regexp for pattern match
		puts "Number of summer in the line :[llength [lsearch -all -regexp -all $line summer]]"
		regsub -nocase -all "summer" $line "winter" line

		#use regsub for substitution
		puts "$lineNumber: $line"
	}
} 
close $f ; #close the file
