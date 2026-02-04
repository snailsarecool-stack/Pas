program textbasedadventure; // Simple text based adventure game written over the course of a few days
uses Crt;

var

    character_name:string; // Name of the person who is playing
    initial_scenario_roll:byte; // Scenario Roll is stored as a byte since it needs to be a small number  
    story_divider:string;
    story_choice_first:byte;
    story_choice_second:byte;
    
    generic_roll:byte;


begin

    randomize(); // Increases the quality of any random() code snippets by using the user's clock data

ClrScr;

    writeln('Please write a name...'); readln(character_name);

ClrScr;
    
    initial_scenario_roll := random(2); // Uses FPC's own random function, based on a Mersenne Twister algorithm for generating random numbers
    story_divider := StringOfChar('=', 150); // Pastes the character "=", 150 times in a line to create a visible divison between text

    if (initial_scenario_roll = 1) then // Picks between scenario 1 or 2 with a roll, roughly 50/50 chance
        begin
            writeln('Your name is ', character_name); // You input your character name, and it is stored for later use
            writeln('The year is 2149');                                                                                                               {Flavor text start, for scenario 1}

            writeln();

            writeln('Neon lights endlessly flicker above the city of VIREX-9, a megastructure of steel towers holograms, and constant surveillance.');
            writeln('People do not own homes anymore. They instead rent Levels.');

            writeln();

            writeln('You live on Level 47, far below the corporate elites and just above the forgotten underground.');
            writeln('From your window you can see drones drifting like insects between buildings, scanning, recording, judging.');

            writeln();

            writeln('There is a problem.. Your ID had stopped updating last night, and now something large and metallic sounding is coming your way.'); {Flavor text end, for scenario 1}

            delay(6000); // Stalls the program for 6 seconds before writing out the text below

            writeln(story_divider);
            writeln('In the heat of the moment you look around you and see...');
            writeln(' - A flickering terminal');
            writeln(' - A cracked window overlooking the city');
            writeln(' - A sealed door that will not open without authorization');
            writeln(story_divider);

            delay(4000); // Stalls the program for 4 seconds before writing out the text below

            writeln('Choose an option (1-3):');
            writeln('1 - Check the terminal');
            writeln('2 - Look out the window');
            writeln('3 - Stay Silent');
            Read(story_choice_first);

            ClrScr;

            generic_roll := random(100); // Picks a number from 0-100, used for various events in the two scenarios

           case (story_choice_first) of
                1:
                    begin
                        
                        if (generic_roll > 40) then

                            begin

                                writeln('You have scavenged valuable information of your level blueprints, you are sure to find a way out!');

                            end
                        else

                            begin

                                writeln('You could not find anything worth your time...');

                            end;
                    end;

                2: 
                    begin
                        writeln('Looking out the cracked window, you see flying cars and all the generic hallmarks of a cyberpunk setting.');
                    end;

                3:
                    begin
                        writeln('Staying silent, you hear the metal entity approach the door when suddenly it; Turns around and walks away..');
                    end;

                else 
                    begin
                        write('Please input a number in the range of 1-3');
                    end;
            end;
        end
    else // Scenario 2, code section
        begin     

            writeln('Your name is ', character_name);
            writeln('You are standing in Sector L-12, the lowest commerical ring of the city.');                                                                            {Flavor text start, for scenario 2}

            writeln();

            writeln('The rain falls upward here, pulled by broken gravity stabilizers, streaking neon reflections into the sky.');
            writeln('Street vendors shout in half-dead languages while corporate propaganda hums softly from hidden speakers, oddly calming..');

            writeln();

            writeln('You hold a reciept in your hands, you do not remember buying anything, but what is more strange is its timestamp, it is.. 3 minutes in the future?');
            writeln('A drone shows up and begins scanning you, due to your account balance now being presumably empty, it tries to chase you');                             {Flavor text end, for scenario 2}

            delay(6000);

            writeln(story_divider);
            writeln('While it is after you, you see...');
            writeln(' - A nearby alley');
            writeln(' - The drone coming towards you');
            writeln(' - A nearby crowd of people');
            writeln(story_divider);

            delay(4000);

            writeln('Choose an option (1-3):');
            writeln('1 - Slip into a nearby alley');
            writeln('2 - Stand still and face the drone');
            writeln('3 - Run into the nearby crowd of people');

            readln(story_choice_first);

            ClrScr;
            case (story_choice_first) of
                1: 
                    begin

                        writeln('You successfully slip into a nearby alley, the drone whizzes by.');

                    end;

                2:
                    begin

                        writeln('Standing still to face the drone, you get ready to fight it with whatever you got.');

                        writeln();

                        writeln('Choose an option(1-3):'); 
                        writeln('1 - Attack facing forward');
                        writeln('2 - Attack facing backward');
                        writeln('3 - Attack facing sideways');
                        readln(story_choice_second);

                        generic_roll := random(100);

                        ClrScr;

                        case story_choice_second of

                            1: 
                                begin

                                    if (generic_roll >= 30) then
                                        begin

                                            writeln('You have successfully hit and destroyed it with sheer force!');

                                        end

                                    else 
                                        begin

                                            writeln('You were vaporized!');

                                        end;



                                end;

                            2:
                                begin

                                    if (generic_roll >= 80) then

                                        begin

                                            write('You were not sure how that would work, but it did, the drone self-destructs from confusion');

                                        end

                                    else 

                                        begin

                                            write('You were vaporized, what a surprise!');

                                        end;

                                end;
            
                            3: 
                                begin

                                    if (generic_roll >=50) then

                                        begin

                                            writeln('Hitting it from this angle, you pushed to the side, giving you a chance to escape!');

                                         end

                                    else

                                        begin

                                            writeln('You were vaporized, though from the side!');

                                        end;
                                end;
                        end;

                    end;
                3:
                    begin

                        writeln('Running to the nearby crowd of people, the drone has troubles keeping up and you escape it; unharmed');

                    end;

                else

                    begin

                        write('Please input a number in the range of 1-3');

                    end;

            end;
        end;
        readln();
end.