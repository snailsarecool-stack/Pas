program discountprogram;

uses Crt;

var

    loyalty_program_member:char;
    spent_money, final_calculation:real;

const

    DISCOUNT = 10;

begin

    writeln('Welcome! What is your total amount spent?'); Readln(spent_money);
    writeln('Are you a loyalty program member? Y/N'); Readln(loyalty_program_member);

    if (loyalty_program_member = 'Y') then

        begin

            final_calculation := spent_money - (spent_money * (DISCOUNT/100));

            ClrScr;

            writeln(StringOfChar('#', 40));
            writeln('Lovely!');
            writeln('Your total comes out to ',(final_calculation):0:2 );
            writeln(StringOfChar('#', 40));
            // UpCase(variable), turns all string characters into UPPERCASE ones

        end
    
    else

        begin

            ClrScr;

            writeln(StringOfChar('#', 40));
            writeln('Lovely!');
            writeln('Your total comes out to ', (spent_money):0:2);
            writeln(StringOfChar('#', 40));

        end;

end.