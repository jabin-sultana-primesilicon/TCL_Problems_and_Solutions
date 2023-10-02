# normally practice list 

set l1 {1 2 3}
set l2 [list one two three]
set l3 [split "1.2.3.4" .]

#print list element
puts $l1
puts $l2
puts $l3

#print llength command counts the number of elements in a list
puts [llength  $l1]; #print of list elements
puts [llength  $l2]
puts [llength  $l3]

puts [llength {1 2 {3 4 5} }]; #This list cointains one inner list—{3 4}. An inner list counts for one element

puts [llength {1 2 {} 3 4}] 

#Retrieving elements :There are three basic commands for list element retrieval: lindex, lrange, and lassign.
set vals { 2 4 6 8 10 12 14 }
puts "The value is $vals"
puts [lindex $vals 0]
puts [lindex $vals 3]
puts [lindex $vals end]
puts [lindex $vals end-2]

puts "lrange and the lassign commands"
puts [lrange {a b c d e} 2 4]
puts [lrange {a b c d e} 1 end]
lassign {a b c } x y z; #The lrange command returns a portion of a list specified by two indexes. The lassign command assigns values from a list to specified variables.
puts "$x $y $z"

puts "Traversing lists"
foreach item {1 2 3 4 5} {
	puts $item
}
puts "names of days using the while loop."
set days [list Monday Tuesday Wednesday Thursday \
	Friday Saturday Sunday]

set n [llength $days]
set i 0

while { $i < $n} {
	puts [lindex $days $i]
	incr i
}

puts "lmap command"
set val {1 2 3 4 5}
puts $val
#puts [lmap a1 $val {expr {$a1 ** 2}}]
#puts $a1"

puts "inserting element"
puts [lappend val 6 7 8];  #lappend does not use dollar sign variable name  
puts [linsert $val 0 1 2 3]

puts "new list"
set nums {4 5 6}
puts $nums

lappend nums 7 8 9
puts $nums
set b {2 3 4 5}
puts [linsert $b  0 11 12 13]; #the first number is the index number , the remaining values are numbers to be inserted into the list 

#concatenate lists
set animal1  {lion eagle elephant dog cat}
set animal2  {giraffe tiger horse dolphin}
set animal [concat $animal1 $animal2]
puts $animal

# search for items
puts [lsearch -exact $animal1 eagle]; # with the -exact option we look for an exact match
puts [lreplace $animal 3 4 buffalo crocodile]

#sorting items
set names {John Mary Lenka Veronika Julia Robert}
set nums {1 5 3 9 10 2 0 8 2 11 18 16}

puts [lsort $names]
puts [lsort -ascii $names]
puts [lsort -ascii -decreasing $names]
puts [lsort -integer -increasing $nums]
puts [lsort -integer -decreasing $nums]
puts [lsort -integer -unique $nums]

#Nested lists
set nums {1 2 {1 2 3 4} {{1 2} {3 4} 3 4}}

puts [llength $nums];   # The size of the list. the nums is a list with two nested lists
puts [llength [lindex $nums 2]]; #In this line, we determine the size of the first nested list, which is the third element of the main list.

puts [lindex $nums 0];  # print the first element of the main list.
puts [lindex [lindex $nums 2] 1]; #2 get the second element of the first nested list
puts [lindex [lindex [lindex $nums 3] 1] 1]; #get the second element of the second inner list of the inner list located at the 4th position of the main list.

set nums {1 2 {1 2 3 {4 5}} 3 4}

puts[lindex $nums 0]
puts[lindex $nums 2 1]
puts [lindex $nums 2 3 1]
