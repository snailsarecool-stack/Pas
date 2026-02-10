procedure winanim(enemy_health:Integer);

var

ending_animation_counter:Byte;

const

ANIM_COUNTER_4FRAME = 4;

begin

if (enemy_health <= 0 ) then // Triggers if the enemy's health is 0 or below
    begin
        for ending_animation_counter := 1 to ANIM_COUNTER_4FRAME do // For loop, cycles 8 times for the victory animation, pseudo-animation
            begin
                delay(1000);

                ClrScr;

                textColor(Green);
                writeln(StringOfChar('=', 40));
                writeln('You won! The enemy has been defeated!');
                writeln(StringOfChar('=', 40));
                writeln();
                writeln('  ^ ^  ':22);  
                writeln('   |   ':22);
                writeln('  /|\  ':22);
                writeln(' / | \ ':22);
                writeln('  / \  ':22);

                

                delay(1000);

                ClrScr;

                textColor(Green);
                writeln(StringOfChar('=', 40));
                writeln('You won! The enemy has been defeated!');
                writeln(StringOfChar('=', 40));
                writeln();
                writeln('  ^ ^  ':22);  
                writeln(' \ | / ':22);
                writeln('  \|/  ':22);
                writeln('   |   ':22);
                writeln('  / \  ':22);

                

                // // if (ending_animation_counter <= 1) then                                        UNUSED, USEFUL CODE FOR THE FUTURE                                        
                // // begin                                                                          FILE WAS TOO LARGE
                // //                                                                                NEED TO FIND A REPLACEMENT!      
                // //     sndPlaySound('.\Sounds\goodEnd.wav', snd_Async or snd_NoDefault);    
                // // end;                                                                                    
                // delay(1000);
                
            end;
            textColor(White);
        end
    
end;