program NameSurname_1;
uses Crt;
var
    number:Integer;
    character:Char;

begin
ClrScr;

    Writeln('Input Character: '); Readln(character);
    Writeln('Value in the ASCII table of the inputted character is: ', Ord(character));

Readln;
end.
