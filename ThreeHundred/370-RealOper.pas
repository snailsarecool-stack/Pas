program IntOper;

var

    input_number1, input_number2: real;
    Addition, Subtraction, Multiplication: real;

begin

    


    Write('Please input a number: ');
    Readln(input_number1);

    Write('Please input a second number: ');
    Readln(input_number2);

    Addition := input_number1 + input_number2;
    Subtraction := input_number1 - input_number2;
    Multiplication := input_number1 * input_number2;
    // Dividation := input_number1 div input_number2;
    // Leftover := input_number1 mod input_number2;


    Writeln('The result of your addition is: ', Addition:0:2);

    Writeln('The result of your subtraction is: ', Subtraction:0:2);

    Writeln('The result of your multiplication is: ', Multiplication:0:2);

    // Writeln('The result of your dividation is: ', Dividation);

    // Writeln('The result of your leftover is: ', Leftover);


end.