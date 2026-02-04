program interestprogram;

uses Crt;

var
    // Input data
    debt: Real;
    interest_rate: Real;
    monthly_payment: Real;

    // Output data
    monthly_debt: Real;
    monthly_interest: Real;
    new_debt: Real;
    total_interest: Real;

    // Support variables

    month_counter: Byte;
begin

    Clrscr;

    write('Input your current debt:'); readln(debt);
    write('Input your interest rate in procentage (%):'); readln(interest_rate);
    write('Input your monthly payments:'); readln(monthly_payment);


    while (debt <= monthly_payment) do  
        begin
            monthly_debt := debt - monthly_payment;
            monthly_interest := monthly_debt*(interest_rate/100);
            new_debt := monthly_debt - monthly_interest;
            total_interest := monthly_interest;
            month_counter := month_counter + 1;
        end;

        











end.