procedure fpush();



begin
ClrScr;
    writeln('================================================');
    writeln('|      o                             <         |');
    writeln('|     \|/                           _|_        |');
    writeln('|      |                             |         |');
    writeln('|     / \                           / \_       |');
    writeln('================================================');
    delay(800);
    ClrScr;
    writeln('================================================');
    writeln('|      o                             <         |');
    writeln('|     \|/                           _|_        |');
    writeln('|      |                             /         |');
    writeln('|     / \                           / \_       |');
    writeln('================================================');      
    sndPlaySound('.\sounds\enemyHit.wav', snd_Async or snd_NoDefault); 
    delay(500);
    sndPlaySound('.\sounds\characterHurt.wav', snd_Async or snd_NoDefault); 
    delay(800);
    ClrScr;
    writeln('================================================');
    writeln('|      o                             <         |');
    writeln('|     \|/                      <<<  _|_        |');
    writeln('|      |                             |         |');
    writeln('|    _/ \                           / \_       |');
    writeln('================================================');
    delay(800);
    ClrScr;
    writeln('================================================');
    writeln('|      o                             <         |');
    writeln('|     /|\                           \|/        |');
    writeln('|      |                             |         |');
    writeln('|    _/ \                            _\        |');
    writeln('================================================');
    delay(800);

end;