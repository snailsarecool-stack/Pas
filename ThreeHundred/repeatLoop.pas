program repeatloopprogram;

var

    age:byte;
    gender:char;
    premium:real;


const

    PREM = 10000.00;
    AGE_LIMIT = 65;
    DISCOUNT_ELDER = 1000.00;
    DISCOUNT_WOMAN = 500.00;

begin
    write('Please input your age: '); readln(age);

    repeat
        write('Please input your gender (M/Z): ');
        readln(gender);
        gender := UpCase(gender);
    until ((gender = 'M') OR (gender = 'Z'));


    if (age > AGE_LIMIT) then
        begin
            premium := PREM - DISCOUNT_ELDER;
            writeln('Your insurance price is: ', premium:0:2, ' RSD');
        end
    else if (gender = 'Z') then
        begin
            premium := PREM - DISCOUNT_WOMAN;
            writeln('Your insurance price is: ', premium:0:2, ' RSD');
        end
    else
        begin
           
            writeln('Your insurance price is: ', premium:0:2, ' RSD');
        
    end;
end.