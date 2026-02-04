program rectanglesurface;

uses Crt;

var

    height, length, surface: Real;

begin

    ClrScr;

    writeln('Input height: '); readln(height);
    writeln('Input length: '); readln(length);

    surface := height * length;

    writeln('The surface of your rectangle is: ', surface:0:2);

end.