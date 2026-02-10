function fightingsystem(name_1, name_2:String; difficulty_rating:Byte):Integer;

var

character_health:Integer;
enemy_health:Integer;

character_fight_roll:Byte;
enemy_fight_roll:Byte;

fight_move_choice:Char;
enemy_move_choice:Byte;
critical_hit_chance:Byte;

begin

    randomize();

    character_health := 10 + endurance;
    enemy_health := 15 + difficulty_rating;

    repeat
        character_fight_roll := 0;
        critical_hit_chance := 0;

        writeln(StringOfChar('=',40));
        writeln('Choose an Action (A/B/C/D)!'); 
        writeln('A) Front Punch'); 
        writeln('B) Scrambling Throw'); 
        writeln('C) Splitting Kick');
        writeln('D) Check Health');

        writeln('================================================');
        writeln('|      o                             <         |');
        writeln('|     \|/                           \|/        |');
        writeln('|      |                             |         |');
        writeln('|     / \                           / \        |');
        writeln('================================================');

        readln(fight_move_choice); 
        fight_move_choice := UpCase(fight_move_choice);

        case (fight_move_choice) of
            
            'A': 
                begin
                    character_fight_roll := random(2) + 1 + strength;        
                    critical_hit_chance := random(9) + 1;                    

                    if (critical_hit_chance >= 8 - agility) then                        
                        begin
                            character_fight_roll := character_fight_roll * 2  
                        end;
                    enemy_health := enemy_health - character_fight_roll;
                    fpunch();      
                end;
            'B': // When b or B are inputted
                begin
                    character_fight_roll := random(5) + 1 + strength;                   // Medium damage action, will have a higher possible random value, +1 is there to prevent any accidental 0 value rolls
                    critical_hit_chance := random(9) + 1;                   // Critical damage chance, rolls and has a +1 to prevent any accidental 0 value rolls      

                    if (critical_hit_chance >= 8 - agility) then                       // Roughly a 20% chance to trigger this IF statement
                        begin
                            character_fight_roll := character_fight_roll * 2 // Multiples the move for double damage
                        end;
                    enemy_health := enemy_health - character_fight_roll;     // Subtracts enemy health by your move's damage    
                    sthrow();    
                end;
            'C': // When c or C are inputted
                begin
                    character_fight_roll := random(3) + 1 + strength;                    // Low damage action, will have a higher possible random value, +1 is there to prevent any accidental 0 value rolls
                    critical_hit_chance := random(9) + 1;                    // Critical damage chance, rolls and has a +1 to prevent any accidental 0 value rolls

                    if (critical_hit_chance >= 8 - agility) then              // Roughly a 20% chance to trigger this IF statement
                        begin
                            character_fight_roll := character_fight_roll * 2  // Multiplies the move for double damage
                        end;
                    enemy_health := enemy_health - character_fight_roll;      // Subtracts enemy health by your move's damage
                    skick();             
                end;
            'D': // When d or D are inputted
                begin
                    ClrScr;
                    sndPlaySound('.\sounds\healthCheck.wav', snd_Async or snd_NoDefault); 
                    write(StringOfChar('+', 14)); write('HEALTH STATS'); writeln(StringOfChar('+', 14));
                    writeln(character_name, ' currently has: ', character_health, ' health points.'); // Writes out current character health
                    writeln(enemy_name, ' currently has: ', enemy_health, ' health points.'); // Writes out enemy health
                    writeln(StringOfChar('+', 40));
                    writeln();
                    textColor(Yellow);
                    writeln('Press ENTER or any KEY and ENTER to continue.');
                    textColor(White);
                    readln();
                    sndPlaySound('.\sounds\typingFinished.wav', snd_Async or snd_NoDefault);
                end;
            else
                begin 

                    writeln('Please input a correct letter, corresponding to the Action!');
                    exit;

                end;

        end;

        if ((character_fight_roll >= 6) AND (character_fight_roll < 8)) then   // From 6 to below 8 = YELLOW
            begin
                textColor(Yellow);
            end
            
        else if (character_fight_roll >= 8) then // From 8 and higher = Magenta
            begin                                    
                textColor(Magenta);
            end;

        if (character_fight_roll > 0) then writeln(enemy_name, ' took: ', character_fight_roll, ' damage!');
        Delay(1000);
        ClrScr;
        
        textColor(White);

        if (enemy_health <= 0) then exit;


        delay(1000);
        writeln(enemy_name,' is getting ready to strike!'); 
        delay(1000);
        
        ClrScr;
        
        write(enemy_name,' is choosing a move.'); sndPlaySound('.\sounds\enemyThinking.wav', snd_Async or snd_NoDefault); delay(500); // Sound cue plays for each half a second spent thinking
        write('.'); sndPlaySound('.\sounds\enemyThinking.wav', snd_Async or snd_NoDefault); delay(500); 
        write('.'); sndPlaySound('.\sounds\enemyThinking.wav', snd_Async or snd_NoDefault); delay(500);

        ClrScr;

        critical_hit_chance := 0;
        enemy_fight_roll := 0;
                {Enemy Moves}

        enemy_move_choice := random(2) + 1; // Enemy roll is also done here

        case (enemy_move_choice) of 
            1: 
                begin
                    writeln(enemy_name,' strikes with an Open Palm!');
                    enemy_fight_roll := random(5) + 1;                                           // High damage action, will have a higher possible random value, +1 is there to prevent any accidental 0 value rolls
                    critical_hit_chance := random(9) + 1;                                       // Roughly a 20% chance to trigger this IF statement

                    if (critical_hit_chance <= 8) then
                        begin
                            enemy_fight_roll := enemy_fight_roll * 2                             // Multiplies the move for double damage
                        end;
                    character_health := character_health - enemy_fight_roll;                    // Subtracts character's health by the enemy's total fight roll (damage)       
                    opalm();
                    textColor(Red);
                    writeln(character_name, ' took ', enemy_fight_roll, ' damage!'); textColor(White);
                    delay(1000);
                    ClrScr;
                end;
            2: 
                begin
                    writeln(enemy_name,' pushes you with force!');                                    
                    enemy_fight_roll := random(3) + 1;                                           // Medium damage action, will have a higher possible random value, +1 is there to prevent any accidental 0 value rolls
                    critical_hit_chance := random(9) + 1;                                       // Roughly a 20% chance to trigger this IF statement

                    if (critical_hit_chance <= 8) then                                           
                        begin
                            enemy_fight_roll := enemy_fight_roll * 2                            // Multiplies the move for double damage
                        end;
                    character_health := character_health - enemy_fight_roll;
                    fpush();
                    textColor(Red);
                    writeln(character_name, ' took ', enemy_fight_roll, ' damage!'); textColor(White);
                    delay(1000);
                    ClrScr;
                end;
            3: 
                begin
                    writeln(enemy_name,' pokes you with a pin!');                                     
                    enemy_fight_roll := random(2) + 1;                                           // Low damage action, will have a higher possible random value, +1 is there to prevent any accidental 0 value rolls
                    critical_hit_chance := random(9) + 1;                                       // Roughly a 20% chance to trigger this IF statement

                    if (critical_hit_chance <= 8) then                                           
                        begin
                            enemy_fight_roll := enemy_fight_roll * 2                             // Multiplies the move for double damage
                        end;
                    character_health := character_health - enemy_fight_roll;
                    ppoke();
                    textColor(Red);
                    writeln(character_name, ' took ', enemy_fight_roll, ' damage!'); textColor(White);
                    delay(1000);
                    ClrScr;
                end;
            
        end;

    until ((character_health <= 0) OR (enemy_health <= 0));

    if (character_health <= 0) then loseanim(character_health);

    fightingsystem := character_health;

end;

    // ClrScr;

    // writeln('You have found', ' ', name_1);

    // character_health := 3 + 9;

    // fightingsystem := character_health;

    // writeln(fightingsystem);