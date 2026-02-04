program thermostatprogram;

uses Crt;

var

    current_room_temp: Integer;
    desired_room_temp: Integer;


begin

    ClrScr;

    write('Please insert your desired room temperature: '); readln(desired_room_temp);
    write('Please insert your current room temperature: '); readln(current_room_temp);

    if (desired_room_temp = current_room_temp) then writeln('The temperature is balanced out! ', current_room_temp, ' C');


    while (desired_room_temp <> current_room_temp) do
        begin

            if (desired_room_temp > current_room_temp) then
                begin
                    

                    current_room_temp := current_room_temp + 1;
                    writeln('Turning up the heat...');
                    Delay(1000);
                    writeln('The temperature has been increased! ', current_room_temp, ' C');
                end

            else if (desired_room_temp < current_room_temp) then
                begin
                    current_room_temp := current_room_temp - 1;
                    writeln('Cooling down the room...');
                    Delay(1000);
                    writeln('The temperature has been lowered! ', current_room_temp,' C');
                end;
        end;

end.