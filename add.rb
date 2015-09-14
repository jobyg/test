class CustomException < StandardError
end

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
valid_input = true
message = 'invalid input:'
for number in input_array
    if ( number > 0  )
        sum += number;
    else
        valid_input = false;
        message << ",";
        message << number.to_s;
    end
end
if (valid_input == false)
   raise CustomException, message
end
print "input string:" ,orig_string ,"\n"
print "sum:" ,sum ,"\n"
