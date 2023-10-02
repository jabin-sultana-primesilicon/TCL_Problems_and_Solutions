proc avg {numbers} { 
   set sum 0 
   foreach number $numbers { 
      set sum  [expr $sum + $number] 
   } 
   set average [expr $sum/[llength $numbers]] 
    puts [format "%.3f" $average] 
} 

puts "Enter one value or multiple value: "

gets stdin value 
avg $value
