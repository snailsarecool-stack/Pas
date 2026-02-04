program weekprogram;

uses Crt;

var

input_character:char;

begin



    writeln('Please input a number (1-7):'); readln(input_character);

    ClrScr;

        case (input_character) of

            '0'..'9':
                writeln('You input a digit!');

            'A'..'Z': 
                writeln('You input a uppercase letter!');

            'a'..'z':
                writeln('You input a lowercase letter!');
    
            '.',',',';',':','!','?','"','''':
                writeln('You input a interpunction symbol!');
                
            '(',')','{','}','[',']':
                writeln('You input a bracket!');

            else 
                writeln('You have input your special character! ', input_character);
        end;
end.