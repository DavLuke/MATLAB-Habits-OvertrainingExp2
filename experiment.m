%for each participant/session here we stablished the order of DevH and DevM
%blocks.
%DevOrder = 1 means that Block 4 is a DevH, Block 5 is a DevM;
%Block 8 would be a DevM and the 9 a DevH.
%DevOrder = 2 means that Block 5 is a DevH, Block 4 is a DevM;
%Block 9 would be a DevM and the 8 a DevH.
DevOrder = round(rand() + 1);
exitExp = false;
while exitExp == false
    
    for block = 1:numBlocks
        if exitExp == true
            break
        end
        
        %blockType = 1, High devaluated; =2, Med devalueated; = 3 no devaluation.
        %DATA.group = input('¿Overtr (No=1/Sí=2)? ---> ');
        if DATA.group == 1
            if DATA.ses == 2 ||DATA.ses == 3 
                blockType = 3;
            else
                if DevOrder == 1
                    if  block == 7
                        blockType = 1;
                    elseif  block == 6
                        blockType = 2;
                    else
                        blockType = 3;
                    end
                else
                    if block == 7
                        blockType = 2;
                    elseif block == 6
                        blockType = 1;
                    else
                        blockType = 3;
                    end
                end
            end
        elseif DATA.group == 2
            if DATA.ses == 1 ||DATA.ses == 2 
                blockType = 3;
            else
                if DevOrder == 1
                    if  block == 7
                        blockType = 1;
                    elseif  block == 6
                        blockType = 2;
                    else
                        blockType = 3;
                    end
                else
                    if block == 7
                        blockType = 2;
                    elseif block == 6
                        blockType = 1;
                    else
                        blockType = 3;
                    end
                end
            end            
        end
        %SPACESHIPS SCREEN at the beginning of each block. It informs about what type of block is the next one:
        DrawFormattedText(wd, ['Ahora veamos el valor de los diamantes para los próximos ensayos'], 'center', resultText1, white);
        Screen('Flip', wd);
        WaitSecs (2);
        
        if blockType == 1
            if counterBalancing(subjectCon,2) == 1
                DrawFormattedText(wd, ['¡El mercado ha cambiado! Ahora los diamantes AZULES valen 0 puntos'], 'center', resultText1, white);
                DrawFormattedText(wd, ['Intenta NO ganar diamantes AZULES en los siguientes ensayos. '], 'center', resultText2, white);
                DrawFormattedText(wd, ['El resto de diamantes han recuperado su valor. '], 'center', resultText3, white);
                DrawFormattedText(wd, ['Además hay interferencias: Verás "??" en lugar del valor de los diamantes. '], 'center', resultText4, white);
            elseif counterBalancing(subjectCon,2) == 2
                DrawFormattedText(wd, ['¡El mercado ha cambiado! Ahora los diamantes ROSAS valen 0 puntos'], 'center', resultText1, white);
                DrawFormattedText(wd, ['Intenta NO ganar diamantes ROSAS en los siguientes ensayos' ], 'center', resultText2, white);
                DrawFormattedText(wd, ['El resto de diamantes han recuperado su valor. '], 'center', resultText3, white);
                DrawFormattedText(wd, ['Además hay interferencias: Verás "??" en lugar del valor de los diamantes. '], 'center', resultText4, white);
            elseif counterBalancing(subjectCon,2) == 3
                DrawFormattedText(wd, ['¡El mercado ha cambiado! Ahora los diamantes AMARILLOS valen 0 puntos'], 'center', resultText1, white);
                DrawFormattedText(wd, ['Intenta NO ganar diamantes AMARILLOS en los siguientes ensayos' ], 'center', resultText2, white);
                DrawFormattedText(wd, ['El resto de diamantes han recuperado su valor. '], 'center', resultText3, white);
                DrawFormattedText(wd, ['Además hay interferencias: Verás "??" en lugar del valor de los diamantes. '], 'center', resultText4, white);
            end
        elseif blockType == 2
            if counterBalancing(subjectCon,2) == 1
                DrawFormattedText(wd, ['¡El mercado ha cambiado! Ahora los diamantes AMARILLOS valen 0 puntos'], 'center', resultText1, white);
                DrawFormattedText(wd, ['Intenta NO ganar diamantes AMARILLOS en los siguientes ensayos' ], 'center', resultText2, white);
                DrawFormattedText(wd, ['El resto de diamantes han recuperado su valor. '], 'center', resultText3, white);
                DrawFormattedText(wd, ['Además hay interferencias: Verás "??" en lugar del valor de los diamantes. '], 'center', resultText4, white);
            elseif counterBalancing(subjectCon,2) == 2
                DrawFormattedText(wd, ['¡El mercado ha cambiado! Ahora los diamantes AZULES valen 0 puntos'], 'center', resultText1, white);
                DrawFormattedText(wd, ['Intenta NO ganar diamantes AZULES en los siguientes ensayos. '], 'center', resultText2, white);
                DrawFormattedText(wd, ['El resto de diamantes han recuperado su valor. '], 'center', resultText3, white);
                DrawFormattedText(wd, ['Además hay interferencias: Verás "??" en lugar del valor de los diamantes. '], 'center', resultText4, white);
            elseif counterBalancing(subjectCon,2) == 3
                DrawFormattedText(wd, ['¡El mercado ha cambiado! Ahora los diamantes ROSAS valen 0 puntos'], 'center', resultText1, white);
                DrawFormattedText(wd, ['Intenta NO ganar diamantes ROSAS en los siguientes ensayos' ], 'center', resultText2, white);
                DrawFormattedText(wd, ['El resto de diamantes han recuperado su valor. '], 'center', resultText3, white);
                DrawFormattedText(wd, ['Además hay interferencias: Verás "??" en lugar del valor de los diamantes. '], 'center', resultText4, white);
            end
        elseif blockType == 3
            DrawFormattedText(wd, ['¡El mercado está normalizado!'], 'center', resultText1, white);
            DrawFormattedText(wd, ['Los diamantes AZUL, AMARILLO y ROSA tienen su valor normal'], 'center', resultText2, white);
            DrawFormattedText(wd, [' Además no hay interferencias: Verás el valor de cada diamante conseguido. '], 'center', resultText4, white);
        end
        Screen('TextSize', wd, 20);
        DrawFormattedText(wd, ['Pulsa la barra espaciadora para continuar'], 'center', resultText5, white);
        Screen('Flip', wd);
        WaitSecs (2);
        nextScreen = 0;
        while nextScreen == 0
            [keyIsDown, secs, keyCode] = KbCheck; %Check for response
            if keyCode(spacebar)
                nextScreen = 1;
            end
        end
        
        
        % LEARNING TRIALS SCREEN
        normaltrial = 0;
        for trial = 1:trialsxblock+4
            [keyIsDown, secs, keyCode] = KbCheck;
            if keyCode(escapeKey)
                exitExp = true;
                break
            end
            respToBeMade = 1;
            CurrentStim = 0; % Stimulus in this trial
            totalTrial = totalTrial +1;
            diamPosit_free = round(rand() + 1); %position of the diamonds if free consumption trial
            
            
            %which trials will be free comsumption trials
            
            if trial == 13  ||  trial == 26 ||  trial == 39 ||  trial == 52
                CurrentStim = 5;
            else
                normaltrial = normaltrial +1;
                
            end
            
            %Draw fixation cross
            fixation
            if trial == 1
                WaitSecs (2);
            end
            
            %cue presentation
            cuepresentation
            
            if tooearly ==0
                %Start timing
                tStart = GetSecs;
                %Start response screen
                while respToBeMade == 1
                    %Drawing response options
                    if CurrentStim == 5
                        if diamPosit_free == 1
                            Screen('DrawTexture', wd, stimOut1tex, [], rect.stim{3} ); %Draw the high value diamond on the left
                            Screen('DrawTexture', wd, stimOut2tex, [], rect.stim{4} );%Draw the medium value diamond on the right
                            Screen('Flip', wd);
                        elseif diamPosit_free == 2
                            Screen('DrawTexture', wd, stimOut1tex, [], rect.stim{4} );%Draw the high value diamond on the right
                            Screen('DrawTexture', wd, stimOut2tex, [], rect.stim{3} ); %Draw the medium value diamond on the left
                            Screen('Flip', wd);
                        end
                    else
                        Screen('DrawTexture', wd, stimAlienlefttex, [], rect.stim{1} ); %Draw the Alien on the left
                        Screen('DrawTexture', wd, stimAlienrighttex, [], rect.stim{2} ); %Draw the Alien on the rigth
                        %Screen('DrawTexture', wd, centerStim, [], rect.stim{5} ); %Draw the cookie
                        Screen('Flip', wd);
                    end
                    
                    %Check for response
                    [keyIsDown, secs, keyCode] = KbCheck;
                    if keyCode (qKey) %lef hand
                        hand = 1;
                        if CurrentStim  == 1%HV1 for this cue the correct response is always q
                            points = highPoints;
                            response = 1; %"correct" response (the one leading to more points)
                            respToBeMade = 0;
                        elseif CurrentStim == 2%HV2 for this cue the correct response is always p
                            points = lowPoints;
                            response = 0; %"incorrect" response
                            respToBeMade = 0;
                        elseif CurrentStim == 3%LV1 for this cue the correct response is always q
                            points = mediumPoints;
                            response = 1;
                            respToBeMade = 0;
                        elseif CurrentStim == 4%LV2 for this cue the correct response is always p
                            points = lowPoints;
                            response = 0;
                            respToBeMade = 0;
                        elseif CurrentStim == 5 %free consumption
                            if diamPosit_free == 1
                                points = highPoints;
                                response = 3; % the HIGH points are selected
                                respToBeMade = 0;
                            elseif diamPosit_free == 2
                                points = mediumPoints;
                                response = 4; % the MEDIUM points are selected
                                respToBeMade = 0;
                            end
                        end
                    elseif keyCode(pKey)%Right
                        hand = 2;
                        if CurrentStim  == 2%HV2 for this cue the correct response is always p
                            points = highPoints;
                            response = 1; %"correct" response (the one leading to more points)
                            respToBeMade = 0;
                        elseif CurrentStim == 1%HV1 for this cue the correct response is always q
                            points = lowPoints;
                            response = 0; %"incorrect" response
                            respToBeMade = 0;
                        elseif CurrentStim == 4%LV2 for this cue the correct response is always p
                            points = mediumPoints;
                            response = 1;
                            respToBeMade = 0;
                        elseif CurrentStim == 3%LV2 for this cue the correct response is always q
                            points = lowPoints;
                            response = 0;
                            respToBeMade = 0;
                        elseif CurrentStim == 5 %free consumption
                            if diamPosit_free == 2
                                points = highPoints;
                                response = 3; % the HIGH points are selected
                                respToBeMade = 0;
                            elseif diamPosit_free == 1
                                points = mediumPoints;
                                response = 4; % the MEDIUM points are selected
                                respToBeMade = 0;
                            end
                        end
                    end
                end
                
                tEnd = GetSecs;
                rt = tEnd - tStart;
                
                %Draw nothing for 300 ms
                DrawFormattedText(wd, ' ', xCenter, yCenter, white);
                Screen('Flip', wd);
                WaitSecs (0.3);
                
                %FEEDBACK
                % Response time limit will be different, depending on DATA.group. However,
                % free consumption trials will be always with LowPressure.
                if CurrentStim == 5
                    timeLimit = LowPressure;
                else
                    timeLimit = HighPressure;
                end
                if rt > timeLimit
                    points = 0;
                    response = 6;
                    DrawFormattedText(wd, ['¡Muy lento! Por favor, responde más rápido'], xfeedback1, yfeedback1, white);
                    Screen('Flip', wd);
                    WaitSecs (0.8);
                    Screen('Flip', wd);
                    WaitSecs (1.5);
                else
                    if points == lowPoints
                        Screen('DrawTexture', wd, stimOut3tex, [], rect.stim{5} ); %Draw the low value diamond
                        Screen('Flip', wd);
                        WaitSecs (0.8);
                        numLV = numLV + 1;
                        if blockType == 2 %blockType = 1, High devaluated; =2, Med devalueated; = 3 no devaluation
                            DrawFormattedText(wd, '??', xfeedback2, yfeedback2);
                        elseif blockType == 1
                            DrawFormattedText(wd, '??', xfeedback2, yfeedback2);
                        elseif blockType == 3
                            if CurrentStim == 5
                                DrawFormattedText(wd, ['+' int2str(points)], xfeedback2, yfeedback2);
                            else
                                DrawFormattedText(wd, ['+' int2str(points)], xfeedback2, yfeedback2);
                                DrawFormattedText(wd, ['¡Puagh! A este Alien no le gustó esa galleta', red], xPuaghText, yPuaghText);
                            end
                        end
                        Screen('Flip', wd);
                        WaitSecs (1.5);
                        
                    elseif points == highPoints
                        Screen('DrawTexture', wd, stimOut1tex, [], rect.stim{5} ); %Draw the high value diamond
                        Screen('Flip', wd);
                        WaitSecs (0.8);
                        numHV = numHV + 1;
                        if blockType == 1%blockType = 1, High devaluated; =2, Med devalueated; = 3 no devaluation
                            points = 0;
                            DrawFormattedText(wd, '??', xfeedback2, yfeedback2);
                        elseif blockType == 2
                            DrawFormattedText(wd, '??', xfeedback2, yfeedback2);
                        elseif blockType == 3
                            if CurrentStim == 5
                                DrawFormattedText(wd, ['+' int2str(points)], xfeedback3, yfeedback3, white);
                            else
                                DrawFormattedText(wd, ['+' int2str(points)], xfeedback3, yfeedback3, white);
                                DrawFormattedText(wd, ['¡Ummm! A este Alien le encantó esa galleta'], xPuaghText, yPuaghText, white);
                            end
                        end
                        Screen('Flip', wd);
                        WaitSecs (1.5);
                    elseif points == mediumPoints
                        Screen('DrawTexture', wd, stimOut2tex, [], rect.stim{5} ); %Draw the high value diamond
                        Screen('Flip', wd);
                        WaitSecs (0.8);
                        numMV = numMV + 1;
                        if blockType == 2%blockType = 1, High devaluated; =2, Med devalueated; = 3 no devaluation
                            points = 0;
                            DrawFormattedText(wd, '??', xfeedback2, yfeedback2);
                        elseif blockType == 1
                            DrawFormattedText(wd, '??', xfeedback2, yfeedback2);
                        elseif blockType == 3
                            DrawFormattedText(wd, ['+' int2str(points)], xfeedback3, yfeedback3, white);
                        end
                        Screen('Flip', wd);
                        WaitSecs (1.5);
                        
                    elseif points == 0  % error trial
                        DrawFormattedText(wd, 'ERROR', xfeedback4, yfeedback4, red);
                        Screen('Flip', wd);
                        WaitSecs (0.8);
                        DrawFormattedText(wd, ['+' int2str(points)], xfeedback2, yfeedback2, white);
                        Screen('Flip', wd);
                        WaitSecs (1.5);
                    end
                end
                totalPoints = points + totalPoints;
                DATA.trial_data(totalTrial, 1) = totalTrial;
                DATA.trial_data(totalTrial, 2) = block;
                DATA.trial_data(totalTrial, 3) = blockType; %1=high devaluated
                DATA.trial_data(totalTrial, 4) = CurrentStim;
                DATA.trial_data(totalTrial, 5) = response; % 1 best response / 0 not the best r/ 3 high points selected (arrows) / 4 low select (arrows)/6 Time out
                DATA.trial_data(totalTrial, 6) = hand; %response to the q or p
                DATA.trial_data(totalTrial, 7) = rt;
                DATA.trial_data(totalTrial, 8) = points;
                DATA.trial_data(totalTrial, 9) = totalPoints;
                if response == 1
                    DATA.trial_data(totalTrial, 10) = 1;
                else
                    DATA.trial_data(totalTrial, 10) = 0;
                end
            else
                DATA.trial_data(totalTrial, 1) = totalTrial;
                DATA.trial_data(totalTrial, 2) = block;
                DATA.trial_data(totalTrial, 3) = blockType; %1=high devaluated
                DATA.trial_data(totalTrial, 4) = CurrentStim;
                DATA.trial_data(totalTrial, 5) = 5; % tooearly
                DATA.trial_data(totalTrial, 6) = 0; %response to the q
                DATA.trial_data(totalTrial, 7) = 0;
                DATA.trial_data(totalTrial, 8) = 0;
                DATA.trial_data(totalTrial, 9) = totalPoints;
                DATA.trial_data(totalTrial, 10) = 0;
                tooearly = 0;
                
                DrawFormattedText(wd, ['¡MUY RÁPIDO! Te quedas sin diamante!'], 'center', yPos, white);
                Screen('Flip', wd);
                WaitSecs (3);
            end
            %this bit is for the *summary*
            %remember     %blockType = 1, High devaluated; =2, Med devalueated; = 3 no devaluation.
            if blockType == 1
                actualHVvalue = 0;
                actualMVvalue = mediumPoints;
                actualLVvalue = lowPoints;
            elseif blockType == 2
                actualHVvalue = highPoints;
                actualMVvalue = 0;
                actualLVvalue = lowPoints;
            else
                actualHVvalue = highPoints;
                actualMVvalue = mediumPoints;
                actualLVvalue = lowPoints;
            end
            
            
            
            
            
        end
        
        summary
        
    end
    exitExp = true;
end