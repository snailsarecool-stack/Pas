program controllingCU;
uses Crt;


var

Debt, Rate_Procentage:Real;
Rate, Interest:Real;

begin

    ClrScr;

    writeln('Input debt: '); readln(Debt);
    writeln('Input rate procentage: '); readln(Rate_Procentage);

    Rate := Rate_Procentage/100;
    Interest := Rate*Debt;
    
    writeln('Interest is: ', Interest:0:3);

end.