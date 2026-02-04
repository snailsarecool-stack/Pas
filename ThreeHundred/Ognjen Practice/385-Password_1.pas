program passwordprogram;

var
    password:string;
const
    CORRECT_PASSWORD = 'ILoveDachshunds1!';
begin

repeat
    write('Please input a password: '); readln(password);
    if (password <> CORRECT_PASSWORD) then writeln('Access Denied');
until(password = CORRECT_PASSWORD);

end.