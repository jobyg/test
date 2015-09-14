print "please enter number:"
input_string = gets;
orig_string = input_string;
input_string.chop!
input_string.delete! '"'
input_array = input_string.split(",").map(&:to_i);
sum = 0 ;
for number in input_array
    sum += number;
end
print "input string:" ,orig_string ,"\n"
print "sum:" ,sum ,"\n"
