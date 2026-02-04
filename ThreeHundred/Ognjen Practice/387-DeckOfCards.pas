program deckofcardsprogram;

uses Crt;

type

card_color = (Spade, Diamond, Heart, Club);
card_value = (Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten, Jack, Queen, King, Ace);

var

color:card_color;
card:card_value;

temporary_number:byte;

begin

    for color := Spade to Club do
        
        begin
            for card := Ace downto Two do
                writeln(color, ' + ', card);
                Delay(1000);
                
        end;

end.