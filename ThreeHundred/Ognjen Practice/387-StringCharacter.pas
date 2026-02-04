program stringcharacterprogram;

uses Crt;

var

input_character:char;
input_number:integer;
counter:integer;


begin

    write('Write your favorite character: '); readln(input_character);
    write('Write your desired "to repeat" amount: '); read(input_number);

    ClrScr;

    for counter := 1 to input_number do
        begin
            write(input_character)
        end;




end.