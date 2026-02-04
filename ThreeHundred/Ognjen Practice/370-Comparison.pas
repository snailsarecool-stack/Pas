program StrComparison;


var

    input_string1, input_string2: string; 
    greater_than, lesser_than, greater_than_equals, lesser_than_equals, different, equal_to: boolean;

begin

    Write('Please input a string: ');
    Readln(input_string1);

    Write('Please input a second string: ');
    Readln(input_string2);

    greater_than := input_string1 > input_string2;
    greater_than_equals := input_string1 >= input_string2;

    lesser_than := input_string1 < input_string2;
    lesser_than_equals := input_string1 <= input_string2;

    different := input_string1 <> input_string2;
    equal_to := input_string1 = input_string2;

    Writeln('The string: ', input_string1, ' is greater than: ', input_string2, '-> ', greater_than);
    Writeln('The string: ', input_string1, ' is greater than or equal to: ', input_string2, '-> ', greater_than_equals);

    Writeln('The string: ', input_string1, ' is lesser than: ', input_string2, '-> ', lesser_than);
    Writeln('The string: ', input_string1, ' is lesser than or equal to: ', input_string2, '-> ', lesser_than_equals);

    Writeln('The string: ', input_string1, ' is different than: ', input_string2, '-> ', different);
    Writeln('The string: ', input_string1, ' is equal to: ', input_string2, '-> ', equal_to);

end.