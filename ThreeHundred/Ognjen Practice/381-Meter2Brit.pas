program meter2imperial;
uses Crt;

var

    length: Real;
    lengFeet, lengYard, lengMile: Real;

const

    Feet = 0.3048;
    Yard = 0.9144;
    Mile = 1609.344;

begin

ClrScr;

    writeln('Please input a number, any number for conversion: '); readln(length);

    lengFeet := length / Feet;
    lengYard := length / Yard;
    lengMile := length / Mile;

    writeln('These are your results in feet: ', lengFeet:0:2);
    writeln('These are your results in yards: ', lengYard:0:2);
    writeln('These are your results in miles: ', lengMile:0:2);

end.