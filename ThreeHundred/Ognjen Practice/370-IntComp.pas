program IntComp;
{Operations with whole numbers}

var

    input_number1, input_number2: integer; {Inputs, any number}
    greater_than, lesser_than, greater_than_equals, lesser_than_equals, different, equal_to: boolean;

begin

    Write('Please input a number: ');
    Readln(input_number1);

    Write('Please input a second number: ');
    Readln(input_number2);

    greater_than := input_number1 > input_number2;
    greater_than_equals := input_number1 >= input_number2;

    lesser_than := input_number1 < input_number2;
    lesser_than_equals := input_number1 <= input_number2;

    different := input_number1 <> input_number2;
    equal_to := input_number1 = input_number2;

    Writeln('The number: ', input_number1, ' is greater than: ', input_number2, '-> ', greater_than);
    Writeln('The number: ', input_number1, ' is greater than or equal to: ', input_number2, '-> ', greater_than_equals);

    Writeln('The number: ', input_number1, ' is lesser than: ', input_number2, '-> ', lesser_than);
    Writeln('The number: ', input_number1, ' is lesser than or equal to: ', input_number2, '-> ', lesser_than_equals);

    Writeln('The number: ', input_number1, ' is different than: ', input_number2, '-> ', different);
    Writeln('The number: ', input_number1, ' is equal to: ', input_number2, '-> ', equal_to);

end.