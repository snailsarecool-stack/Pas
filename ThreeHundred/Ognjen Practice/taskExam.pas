program Stairs;
uses Crt;
var i, j, n: Integer;
begin
ClrScr;
    ReadLn(n);
    for i := 1 to n do
        begin
            for j := 1 to n - i do

                    write(' ');

            for j := 1 to i do

                    write('*');

            writeln;
        end;
end.
 
 