%OK, first I will try to show just the text, and comment all related with the
%images. That's why there are many commented lines
FlushEvents('keyDown')
HVpoints = numHV * actualHVvalue ;
MVpoints = numMV * actualMVvalue ;
LVpoints = numLV * actualLVvalue ;
       if counterBalancing(subjectCon,2) == 1
            colorHigh = 'Azules';
            colorMed = 'Amarillos';
            colorLow = 'Rosas';
        elseif counterBalancing(subjectCon,2) == 2
            colorHigh = 'Rosas';
            colorMed = 'Azules';
            colorLow = 'Amarillos';
        elseif counterBalancing(subjectCon,2) == 3
            colorHigh = 'Amarillos';
            colorMed = 'Rosas';
            colorLow = 'Azules';
       end
exitSummary = false;
while exitSummary == false
   
Puntostotales = Screen('TextBounds', wd, ['Puntos conseguidos por ahora ' int2str(totalPoints)]);
xPuntostotales = (screenXpixels / 2) - (Puntostotales(3) / 2);
yPuntostotales = (screenYpixels / 1.4) - (Puntostotales(4) / 2);
DrawFormattedText(wd, ['Puntos conseguidos por ahora ' int2str(totalPoints)], xPuntostotales, yPuntostotales, white);

if blockType == 1

NumofDev = Screen('TextBounds', wd, ['Has obtenido  ' int2str(numHV) 'diamantes ' colorHigh]);
xNumofDev = (screenXpixels / 2) - (NumofDev(3) / 2);
yNumofDev = (screenYpixels / 2.3) - (NumofDev(4) / 2);
DrawFormattedText(wd, ['Has obtenido  ' int2str(numHV) ' diamantes ' colorHigh], xNumofDev, yNumofDev, white);

NumofDev1 = Screen('TextBounds', wd, ['Has obtenido 0 puntos de tus diamantes ' colorHigh]);
xNumofDev1 = (screenXpixels / 2) - (NumofDev1(3) / 2);
yNumofDev1 = (screenYpixels / 2) - (NumofDev1(4) / 2);
DrawFormattedText(wd, ['Has obtenido 0 puntos de tus diamantes ' colorHigh], xNumofDev1, yNumofDev1, white);

NumofDev2 = Screen('TextBounds', wd, ['En el futuro, evita ganar los diamantes que valgan 0 puntos ']);
xNumofDev2 = (screenXpixels / 2) - (NumofDev2(3) / 2);
yNumofDev2 = (screenYpixels / 1.7) - (NumofDev2(4) / 2);
DrawFormattedText(wd, ['En el futuro, evita ganar los diamantes que valgan 0 puntos '], xNumofDev2, yNumofDev2, white);

DevReminder = Screen('TextBounds', wd, ['Recuerda que los diamantes  ' colorHigh '¡¡valían 0 puntos!!']);
xDevReminder = (screenXpixels / 2) - (DevReminder(3) / 2);
yDevReminder = (screenYpixels / 2.6) - (DevReminder(4) / 2);
DrawFormattedText(wd, ['Recuerda que los diamantes  ' colorHigh ' ¡¡valían 0 puntos!!'], xDevReminder, yDevReminder, white);
DrawFormattedText(wd, ['Pulsa la barra espaciadora para continuar'], 'center', resultText5, white);
Screen('Flip', wd);

elseif blockType == 2

NumofDev = Screen('TextBounds', wd, ['Has obtenido  ' int2str(numMV) 'diamantes ' colorMed]);
xNumofDev = (screenXpixels / 2) - (NumofDev(3) / 2);
yNumofDev = (screenYpixels / 2.3) - (NumofDev(4) / 2);
DrawFormattedText(wd, ['Has obtenido  ' int2str(numMV) ' diamantes ' colorMed], xNumofDev, yNumofDev, white);

NumofDev1 = Screen('TextBounds', wd, ['Has obtenido 0 puntos de tus diamantes ' colorMed]);
xNumofDev1 = (screenXpixels / 2) - (NumofDev1(3) / 2);
yNumofDev1 = (screenYpixels / 2) - (NumofDev1(4) / 2);
DrawFormattedText(wd, ['Has obtenido 0 puntos de tus diamantes ' colorMed], xNumofDev1, yNumofDev1, white);

NumofDev2 = Screen('TextBounds', wd, ['En el futuro, evita ganar los diamantes que valgan 0 puntos ']);
xNumofDev2 = (screenXpixels / 2) - (NumofDev2(3) / 2);
yNumofDev2 = (screenYpixels / 1.7) - (NumofDev2(4) / 2);
DrawFormattedText(wd, ['En el futuro, evita ganar los diamantes que valgan 0 puntos '], xNumofDev2, yNumofDev2, white);

DevReminder = Screen('TextBounds', wd, ['Recuerda que los diamantes  ' colorMed '¡¡valían 0 puntos!!']);
xDevReminder = (screenXpixels / 2) - (DevReminder(3) / 2);
yDevReminder = (screenYpixels / 2.6) - (DevReminder(4) / 2);
DrawFormattedText(wd, ['Recuerda que los diamantes  ' colorMed ' ¡¡valían 0 puntos!!'], xDevReminder, yDevReminder, white);
DrawFormattedText(wd, ['Pulsa la barra espaciadora para continuar'], 'center', resultText5, white);
Screen('Flip', wd);

elseif blockType == 3

NumofDev2 = Screen('TextBounds', wd, ['En este bloque todos los diamantes conservaban su valor ']);
xNumofDev2 = (screenXpixels / 2) - (NumofDev2(3) / 2);
yNumofDev2 = (screenYpixels / 1.7) - (NumofDev2(4) / 2);
DrawFormattedText(wd, ['En este bloque todos los diamantes conservaban su valor  '], xNumofDev2, yNumofDev2, white);
DrawFormattedText(wd, ['Pulsa la barra espaciadora para continuar'], 'center', resultText5, white);
Screen('Flip', wd);
    
end
    [keyIsDown, secs, keyCode] = KbCheck;
    if keyCode(spacebar)
        exitSummary = true;
    end
    
end
numHV = 0;
numMV = 0;
numLV = 0;

