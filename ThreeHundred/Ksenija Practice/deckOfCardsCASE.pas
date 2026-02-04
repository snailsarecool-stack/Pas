program deckofcardscase; 
uses Crt; {Library needed for code later on}

// type

//     CARD_SYMBOL = (Diamond, Spade, Heart, Club);

var

input_number:Byte; {Number you are asked to input in the beginning}

begin
ClrScr;

    write('Please input a number (1-4): '); Read(input_number); {Asks you to input a number from 1-4 and then}

    case input_number of {5 different scenarios}

        1: {If 1 is written: Pick a Diamond}
            begin

                writeln('You drew a Diamond!');

            end;

        2:  {If 2 is written: Pick a Spade}
            begin

                writeln('You drew a Spade!');

            end;

        3:  {If 3 is written: Pick a Heart}
            begin

                writeln('You drew a Heart!');

            end;

        4:  {If 4 is written: Pick a Club}
            begin

                writeln('You drew a Club!');

            end;        

        else

            begin 

            writeln('Write a number from 1-4, or it WONT WORK');

            end;
    end;

end.