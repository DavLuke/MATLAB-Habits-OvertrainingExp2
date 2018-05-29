escapeKey = KbName('ESCAPE');
spacebar = KbName('space');
leftKey = KbName('LeftArrow');
rightKey = KbName('RightArrow');
activeKeys = [leftKey rightKey escapeKey spacebar];

if DATA.ses == 3
    exitKey = escapeKey;
else
    exitKey = spacebar;
    
end

InstrScreens = 0;
% restrict the keys for keyboard input to the keys we want
RestrictKeysForKbCheck(activeKeys);
% suppress echo to the command line for keypresses
% ListenChar(2);
exitInstr = false;
%insMatrix = [instr1, instr2, instr3, instr4, instr5, instr6, instr7, instr8];
insMatrix = [instr1, instr2, instr3, instr4, instr5, instr6, instr7];
n=1;
Screen('DrawTexture', wd, insMatrix(n),[], rect.stim{6});
Screen('Flip', wd);
WaitSecs(0.2);KbWait;
while exitInstr == false
    [keyIsDown, secs, keyCode] = KbCheck;
    if keyCode(exitKey)
        exitInstr = true;
    elseif keyCode(leftKey)
        n=n-1;
        if n < 1
            n=1;
        end
        Screen('DrawTexture', wd, insMatrix(n),[], rect.stim{6});
        Screen('Flip', wd);
        WaitSecs(0.2);KbWait;
    elseif keyCode(rightKey)
        n=n+1;
        if n < 1
            n=1;
        elseif n > 7
            n = 7;
        end
        Screen('DrawTexture', wd, insMatrix(n),[], rect.stim{6});
        Screen('Flip', wd);
        WaitSecs(0.2);KbWait;
    end
    
end
% reset the keyboard input checking for all keys
RestrictKeysForKbCheck ([]);
