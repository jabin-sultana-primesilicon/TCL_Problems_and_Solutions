proc printSumProduct {x y} { 
    set sum [expr {$x + $y}] 
    puts "sum is $sum"
    return "OK" 
} 
puts "Enter the value of x: "
gets stdin value1
puts "Enter the value of y: "
gets stdin value2

printSumProduct $value1 $value2 
