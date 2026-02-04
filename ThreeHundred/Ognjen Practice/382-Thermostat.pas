program thermostatprogram;

uses Crt;

var

    current_room_temp:byte;

begin

    ClrScr;

    writeln('Please insert your current room temperature: '); readln(current_room_temp);

    if (current_room_temp > 22) then
        begin
            writeln(StringOfChar('*',40));
            writeln('Current room temperature is: ', current_room_temp);
            writeln('Desired room temperature is: ', current_room_temp - 1);
            writeln(StringOfChar('*',40));
        end
    else 
        begin
            writeln(StringOfChar('*',40));
            writeln('Current room temperature is: ', current_room_temp);
            writeln(StringOfChar('*',40));
        end;
end.