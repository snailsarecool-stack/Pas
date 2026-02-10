procedure loseanim(character_health:Integer);

begin

    if (character_health <= 0) then // If the character's health reaches 0, this plays instead. No animation for losing...
        begin
            textColor(Red);
            writeln('You lost! The enemy has defeated you!');
            
            writeln('  x x  ');  
            writeln('   |   ');
            writeln('  /|\  ');
            writeln('   |   ');
            writeln('  / \  ');
        end;
    textColor(White);
    delay(2000);
end;