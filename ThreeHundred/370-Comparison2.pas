program digits;

var

    input_number: longint;
    initial_result, final_result: integer;

begin

    Write('Input a seven digit number: '); 
    Readln(input_number);

    initial_result := input_number div 10000;
    final_result := initial_result mod 10;

    Write('The final result is: ', final_result);

end.