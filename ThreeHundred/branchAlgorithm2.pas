program branched_algorithm2;
uses Crt;

var

    age:Byte;
    premium_final, premium, discount:Real;
    gender: Char;

const

    LIMIT = 65;
    PREM = 10000;
    DISCOUNT_ELDER = 1000;
    DISCOUNT_YOUNG = 500;


begin
ClrScr;

    Write('Please write your age: '); Readln(age);
    premium := PREM;

    case age of

        18:
            begin

            premium := PREM - DISCOUNT_YOUNG;
            writeln('Approved for the young!');
            writeln('Your premium is: ', (premium):0:2);

            end;

        65:
            begin       

            premium := PREM - DISCOUNT_ELDER;
            writeln('Approved for the elderly!');
            writeln('Your premium is: ', (premium):0:2);

            end;
        else 

            begin

            Writeln('No discount!');
            Writeln('Premium is: ', (premium):0:2);

            end;


    // write('What is your age: '); readln(age);
    // write('What is your gender(m/z): '); readln(gender);
    // premium := PREM;

    // if (age>LIMIT) then

    // begin
    //     premium := PREM - DISCOUNT_ELDER;
    //     writeln('You have received an age discount!');
    //     writeln('Your premium is: ', (premium):0:2);
    // end

    // else if (gender = 'z') then
    // begin
    //     premium := PREM - DISCOUNT_WOMAN;
    //     writeln('Discounted granted for women!');
    //     writeln('Your premium is now: ', (premium):0:2);
    // end

    // else writeln('No discount! Premium is: ', (premium):0:2);

    end;

end.