program bonusprogram;

var

    pay:real;
    days_off, work_length:byte;

const

    LIMIT = 5;
    EXTENDED_DAYS_OFF = 5;
    BONUS_INCREASE = 10;

begin

    writeln('Input your pay amount:'); readln(pay);
    writeln('Input your number of days off:'); readln(days_off);
    writeln('Input the number of years spent working in the company:'); readln(work_length);
    writeln(StringOfChar('*', 40));

    if (work_length > LIMIT) then

        begin 

            pay := pay + (pay * (10/100));
            days_off := days_off + EXTENDED_DAYS_OFF;

            writeln('Your pay is: ', pay:0:2, ' RSD');
            writeln('You have: ', days_off, ' Days Off');
             writeln(StringOfChar('*', 40));

        end

    else

        begin

            writeln('Your pay is: ', pay:0:2, ' RSD');
            writeln('You have: ', days_off, ' Days Off');
             writeln(StringOfChar('*', 40));

        end;

end.