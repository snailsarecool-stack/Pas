program weekprogram;

uses Crt;

var

input_number:byte;

begin

    input_number := 0;

    writeln('Please input a number (1-7):'); readln(input_number);

    ClrScr;

        case (input_number) of

            1:
                writeln('Today is Monday!');
            2:  
                writeln('Today is Tuesday!');
            3:
                writeln('Today is Wednesday!');
            4:
                writeln('Today is Thursday!');
            5: 
                writeln('Today is Friday!');
            6:
                writeln('Today is Saturday!');
            7: 
                writeln('Today is Sunday!');
            else 
                writeln('Input a valid number (1-7)');
        end;
end.