program gradesprogram;

var

test_points:integer;

begin

    test_points := 0;

    write('Please input you score: '); readln(test_points);

    if ((test_points > 95) AND (test_points < 100)) then
        begin
            writeln('Your grade is: 10', ', Congratulations!');
        end

    else if ((test_points > 85) AND NOT (test_points > 95)) then
            writeln('Your grade is: 9', ', Congratulations!')
    else if ((test_points > 75) AND NOT (test_points > 85)) then
            writeln('Your grade is: 8', ', Congratulations!')
    else if ((test_points > 65) AND NOT (test_points > 75)) then
            writeln('Your grade is: 7', ', Congratulations!')
    else if ((test_points > 55) AND NOT (test_points > 65)) then
            writeln('Your grade is: 6', ', Congratulations!')
    else if ((test_points <= 55) AND NOT (test_points < 0)) then
            writeln('Your grade is: 5', ', Too bad!')
    else if ((test_points < 0)) OR (test_points > 100) then
            writeln('Please input a positive number (0-100)!')

end.