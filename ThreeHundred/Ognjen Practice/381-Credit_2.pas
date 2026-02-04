program creditprogram2;
// inputting negative values in everything should kill the program
var

credit_amount:real;
months:integer;
credit_score:integer;
interest_rate:real;

const

FIRST_LIMIT = 500;
SECOND_LIMIT = 700;

INTEREST_RATE10 = 10;
INTEREST_RATE8 = 8;

begin

    credit_amount := 0;
    months := 0;

    writeln('Input how much credit you would like'); readln(credit_amount); 
    writeln('Input your payment plan, in months:'); readln(months);
    writeln('Input your credit score:'); readln(credit_score);

    if (months <= 0) OR (credit_amount <= 0) then
        begin
            writeln(StringOfChar('*',40));
            writeln('Please input a postive number.');
            writeln(StringOfChar('*',40));
            exit; // This command ends the program
        end;

    if (credit_score > FIRST_LIMIT) AND NOT (credit_score > SECOND_LIMIT) then
        begin

            interest_rate := (credit_amount + credit_amount*(INTEREST_RATE10/100));

            writeln(StringOfChar('*',40));
            writeln('You have been approved for your credit request!');
            writeln();
            writeln('Interest rate: ', interest_rate:0:2, ' per Month');
            writeln(StringOfChar('*',40));
        end
    else 
        begin
            writeln(StringOfChar('*',40));
            writeln('You are not approved for your credit request!');
            writeln('Number of points needed for approval: ', (FIRST_LIMIT - credit_score) + 1);
            writeln(StringOfChar('*',40));
        end;

end.