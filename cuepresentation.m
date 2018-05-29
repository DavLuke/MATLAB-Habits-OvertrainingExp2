FlushEvents
dotColor = [1 0 0];
dotSizePix = 20;

%Trial type selection

if CurrentStim == 5
    centerStim = arrowstex;
    DrawFormattedText(wd, 'Los aliens están distraidos...', 'center', resultText1, white);
    Screen('Flip', wd);
    WaitSecs (2);
    DrawFormattedText(wd, '3', 'center', resultText1, white);
    Screen('Flip', wd);
    WaitSecs (1);
    DrawFormattedText(wd, ' ', 'center', resultText1, white);
    Screen('Flip', wd);
    WaitSecs (0.2);
    DrawFormattedText(wd, '2', 'center', resultText1, white);
    Screen('Flip', wd);
    WaitSecs (1);
    DrawFormattedText(wd, ' ', 'center', resultText1, white);
    Screen('Flip', wd);
    WaitSecs (0.2);
    DrawFormattedText(wd, '1', 'center', resultText1, white);
    Screen('Flip', wd);
    WaitSecs (1);
    DrawFormattedText(wd, ' ', 'center', resultText1, white);
    Screen('Flip', wd);
    WaitSecs (0.2);
else
    if allConditions(block, normaltrial) == 1
        centerStim = stimCue1tex;
        CurrentStim = 1; %HV1
    elseif allConditions(block, normaltrial) == 2
        centerStim = stimCue2tex;
        CurrentStim = 2; %HV2
    elseif allConditions(block, normaltrial) == 3
        centerStim = stimCue3tex;
        CurrentStim = 3; %LV1
    elseif allConditions(block, normaltrial) == 4
        centerStim = stimCue4tex;
        CurrentStim = 4; %LV2
    end
end


Screen('DrawTexture', wd, centerStim, [], rect.stim{5} ); %Draw the image
Screen('Flip', wd); 
if block == 1
    thisTrialCueTime = TimeCue1;
elseif block == 2
    thisTrialCueTime = TimeCue2; 
else
    thisTrialCueTime = TimeCue3;
end
tic

while toc < thisTrialCueTime
resp = CharAvail;
 if  resp==1
    tooearly = 1;
else
    tooearly = 0;
end
end