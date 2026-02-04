program savingsprogram;

var

    deposit: Real;
    interest_percentage: Real;
    counter: Byte; //Counter which goes through months from 1 through 12
    vsavings:Real;

const

    NUMBER_OF_MONTHS = 12;

begin
    write('Write the amount you want to deposit: '); readln(deposit);
    write('Write the interest rate in percentage: '); readln(interest_percentage);
    writeln('Month':10, 'Savings':10, 'Interest':10, 'Kamata':10, ' New Savings':15);
    for counter:=1 to NUMBER_OF_MONTHS do 
        begin
            writeln(counter:10, '|');
            write(vsavings:10:2, '|');
            write(interest_percentage:10:2, '|');
            

        end;
end.