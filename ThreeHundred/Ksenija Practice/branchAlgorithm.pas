program branched_algorithm;
uses Crt;

var

    age: Byte;
    premium_final: Real;
    age_status: String;

const

    PREMIUM = 10000;
    DISCOUNT = 1000;

begin
ClrScr;

    write('Write your current age: '); readln(age);

    // if (age > 65) then
    //     begin

    //     premium_final := PREMIUM;

    //     end
    // else

    //     premium_final := PREMIUM - DISCOUNT;

    // writeln('Premium for the insured with this age is: ', premium_final:0:2);

    if (age <= 65) then

    begin

        age_status := 'Young';

    end

    else

        age_status := 'Old';

 

    Write(age_status);
    

end.