program circleesurface;

uses Crt;

var

    circumference, surface: Real;

const

    pi = 3.14;

begin

    ClrScr;

    writeln('Input circumference: '); readln(circumference);

    surface := circumference * circumference * pi; {sqr(circumference) also works, also power(circumference,2) if the program uses Math;}

    writeln('The surface of your circle is: ', surface:0:2);

end.