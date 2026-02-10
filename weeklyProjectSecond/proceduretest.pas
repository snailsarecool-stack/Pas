{$Mode ObjFPC}
program testingprocedures;

uses Crt, MMSystem, SysUtils;

var
    menu_choice:String;
    main_menu_choice:String;
    character_name:String[30];

    enemy_name:String;

    movement_key:String;
    difficulty_rating:Byte;

    strength:Byte;
    endurance:Byte;
    agility:Byte;

    power_level:Byte;
    character_health:Integer;
    enemy_health:Integer;

    {$I fake_loading_dots.pas}
    {$I .\animations\endings\win_anim.pas}
    {$I .\animations\endings\lose_anim.pas}
    {$I .\animations\fightmoves\front_punch.pas}
    {$I .\animations\fightmoves\scrambling_throw.pas}
    {$I .\animations\fightmoves\splitting_kick.pas}
    {$I .\animations\fightmoves\open_palm.pas}
    {$I .\animations\fightmoves\force_push.pas}
    {$I .\animations\fightmoves\pin_poke.pas}
    {$I fight_debug.pas}
    {$I debug_menu.pas}
    {$I main_menu.pas}
    {$I movement.pas}
    {$I encounter.pas}
    {$I attributes.pas} 
    {$I actual_fighting_system.pas}
    
    
    
begin

    difficulty_rating := 0;

    main_menu(main_menu_choice);

    // repeat
        case (main_menu_choice) of
            'E':
                begin
                    ClrScr;
                    textColor(Green);
                    write('Exiting'); fakeloadingdots();
                    textColor(White);
                    exit;
                end;
        end;
    // until (selected_choice = 3);

        ClrScr;
        textColor(Green);
        write('Loading'); fakeloadingdots();
        textColor(White);
        ClrScr;

        write('Please input your character name: '); readln(character_name); sndPlaySound('.\sounds\typingFinished.wav', snd_Async or snd_NoDefault);

        power_level := attributes(strength, endurance, agility);

        movement(movement_key);

        enemy_name := encounter();

        fightingsystem(character_name,enemy_name,difficulty_rating);

        enemy_name := encounter();

        fightingsystem(character_name,enemy_name,difficulty_rating);

        enemy_name := encounter();

        fightingsystem(character_name,enemy_name,difficulty_rating);

end.