program deckofcards;
uses Crt;

var

    card_symbol:byte;

begin
ClrScr;

    write('Pick a number: '); Readln(card_symbol);

    if (card_symbol = 1) then
        begin
            
            writeln('You drew Diamond!');

        end

    else if (card_symbol = 2) then
        begin
            
            writeln('You drew Spade!');

        end

    else if (card_symbol = 3) then
        begin   
            
            writeln('You drew Club!');

        end

    else if (card_symbol = 4) then
        begin

            writeln('You drew Heart!');

        end

    else if (card_symbol >= 4) OR (card_symbol >= 0) then
        begin

            writeln('Invalid input!');

        end;    


end.