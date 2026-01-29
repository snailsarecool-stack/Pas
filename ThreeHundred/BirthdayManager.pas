program BirthdayManager;

uses
  crt, sysutils, dateutils;

const
  MAX = 100;

type
  TBirthday = record
    Name: string;
    Day, Month, Year: integer;
  end;

var
  People: array[1..MAX] of TBirthday;
  Count: integer;

procedure AddBirthday;
begin

  if Count = MAX then
  begin
    writeln('List is full!');
    exit;
  end;

  Inc(Count);

  write('Enter name: ');
  readln(People[Count].Name);

  write('Enter day: ');
  readln(People[Count].Day);

  write('Enter month: ');
  readln(People[Count].Month);

  write('Enter year: ');
  readln(People[Count].Year);

  writeln('Birthday added.');
end;

procedure ListBirthdays;
var
  i: integer;
begin
  if Count = 0 then
  begin
    writeln('No birthdays stored.');
    exit;
  end;

  for i := 1 to Count do
    writeln(People[i].Name, ' - ',
            People[i].Day, '.', People[i].Month, '.', People[i].Year);
end;

procedure NextBirthday;
var
  i, bestIndex: integer;
  today, bday, bestDate: TDateTime;
  y, m, d: word;
begin
  if Count = 0 then
  begin
    writeln('No birthdays stored.');
    exit;
  end;

  today := Date;
  DecodeDate(today, y, m, d);

  bestDate := EncodeDate(3000, 1, 1);
  bestIndex := -1;

  for i := 1 to Count do
  begin
    bday := EncodeDate(y, People[i].Month, People[i].Day);

    if bday < today then
      bday := EncodeDate(y + 1, People[i].Month, People[i].Day);

    if bday < bestDate then
    begin
      bestDate := bday;
      bestIndex := i;
    end;
  end;

  writeln('Next upcoming birthday:');
  writeln(People[bestIndex].Name, ' on ',
          People[bestIndex].Day, '.', People[bestIndex].Month, '.', People[bestIndex].Year);
end;

var
  choice: char;

begin
  Count := 0;

  repeat
    clrscr;
    writeln('--- Birthday Manager ---');
    writeln('1. Add birthday');
    writeln('2. List birthdays');
    writeln('3. Next upcoming birthday');
    writeln('4. Exit');
    writeln;
    write('Choice: ');
    readln(choice);

    clrscr;
    case choice of
      '1': AddBirthday;
      '2': ListBirthdays;
      '3': NextBirthday;
    end;

    if choice <> '4' then
    begin
      writeln;
      writeln('Press any key...');
      readkey;
    end;

  until choice = '4';
end.