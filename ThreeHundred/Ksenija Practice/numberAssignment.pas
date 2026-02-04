program numberAssignment;

var

initial_number:integer;
triple_digit_result, double_digit_result, single_digit_result:byte;

begin

Write('Please insert a number: ');
Readln(initial_number);

Writeln(initial_number mod 100 = triple_digit_result);
Writeln(triple_digit_result div 10 = double_digit_result);

end.