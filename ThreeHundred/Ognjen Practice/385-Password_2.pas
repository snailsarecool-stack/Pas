program passwordprogram;

uses Crt, Qindows;

var
    password:string;
const
    CORRECT_PASSWORD = 'ILoveDachshunds1!';
begin

    while (password <> CORRECT_PASSWORD) do
        begin
            

            write('Please input a password: '); 
            readln(password);
            if (password <> CORRECT_PASSWORD) then writeln('Access Denied');
            
            
        end;
      

end.