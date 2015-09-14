print "please enter number:"
input_string = gets;
orig_string = input_string;
input_string.chop!
input_string.delete! '"'
delimiter = ',';
if input_string.match(/\/\//)
   delimiter = input_string[2..2]
   input_string = input_string[5..-1]
end
input_string = input_string.gsub(/\\n/,delimiter)
input_array = input_string.split(delimiter).map(&:to_i);
sum = 0 ;
for number in input_array
    sum += number;
end
print "input string:" ,orig_string ,"\n"
print "sum:" ,sum ,"\n"
