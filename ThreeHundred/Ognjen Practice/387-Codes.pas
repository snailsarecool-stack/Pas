program codeprogram;
uses Crt;

var

character:char;

begin

ClrScr;

    for character :='A' to 'Z' do
        begin

            writeln(character, '-->', Ord(character));
            Delay(500);
        end;


end.