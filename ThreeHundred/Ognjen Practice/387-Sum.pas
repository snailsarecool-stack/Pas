program sumprogram;

uses Crt;

var

counter:byte;
number_of_additions: Integer;
number_to_add: Integer;
sum_of_numbers: Real;


begin
    write('Please input the first number: '); Readln(number_of_additions);

    while (number_of_additions <= 0) do
        begin
            ClrScr;

            write('Please write a positive number: '); Readln(number_of_additions);
        end;

    for counter := 1 to number_of_additions do
        begin
            write('Input the number to add: '); readln(number_to_add);
            sum_of_numbers += number_to_add // This is the same as sum_of_numbers := sum_of_numbers + number_to_add!
        end;


    writeln('Added up, all the numbers amount to: ', sum_of_numbers:0:2);




end.