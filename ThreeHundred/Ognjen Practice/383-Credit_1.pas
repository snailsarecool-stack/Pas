program creditprogram;
// inputting - values in everything should kill the program
var

credit_amount:real;
months:integer;
credit_score:integer;

const

LIMIT = 700;

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

    if (credit_score > LIMIT) then
        begin
            writeln(StringOfChar('*',40));
            writeln('You have been approved for your credit request!');
            writeln('Your monthly rate is: ', (credit_amount/months):0:2, ' RSD per months');
            writeln(StringOfChar('*',40));
        end
    else 
        begin
            writeln(StringOfChar('*',40));
            writeln('You are not approved for your credit request!');
            writeln(StringOfChar('*',40));
        end;

end.