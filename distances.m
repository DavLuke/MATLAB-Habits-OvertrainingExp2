imageSizeX = 756;
imageSizeY = 756;

% get the size of the screen and figure out the locations of the stimuli
[wdw, wdh]      = Screen('WindowSize', wd);
centre          = round([wdw/2, wdh/2]);
dist            = wdh/2;
distver         = wdh/4;
loc1            = [centre(1)-dist, centre(2)]; % centre of pie 1: centre left.
loc2            = [centre(1)+dist, centre(2)]; % centre of pie 2: centre right.
loc5            = centre; % centre of screen: feedback.

loc6            = [centre(1)-dist, centre(2)/2]; % left up.
loc7            = [centre(1), centre(2)-distver]; % centre up .
loc8            = [centre(1)+dist, centre(2)-distver]; % right up.
loc9            = [centre(1)-dist, centre(2)*1.5]; % % left down.
loc10           = [centre(1), centre(2)+distver]; % centre down
loc11           = [centre(1)+dist, centre(2)+distver]; % right down.

    % Drawing size parameters
    prep.draw.fx        = 7; % radius of the fixation cross
    prep.stimDistance   = wdh/2;
    prep.draw.rStim     = round(wdh/3); 
    prep.draw.rArrow     = round(wdw/10);
    prep.draw.rSmile    = round(wdh/10);
    prep.draw.rFrame    = prep.draw.rStim+round(0.01*wdh); % 'radius' of the square outside of the pie
    prep.draw.wdFrame   = 5;  % frame width
    prep.draw.instFrame (1) = round((wdw/1.1)/2);
    prep.draw.instFrame (2) = round((wdh/1.1)/2);
    
    
rect.stim{1}          = [(loc1(1)-prep.draw.rStim) (loc1(2)-prep.draw.rStim) ...
    (loc1(1)+prep.draw.rStim) (loc1(2)+prep.draw.rStim)]; %rectangle defining image left
rect.stim{2}          = [(loc2(1)-prep.draw.rStim) (loc2(2)-prep.draw.rStim) ...
    (loc2(1)+prep.draw.rStim) (loc2(2)+prep.draw.rStim)]; %rectangle defining image right
%
rect.stim{3}          = [(loc1(1)-prep.draw.rSmile) (loc1(2)-prep.draw.rSmile) ...
    (loc1(1)+prep.draw.rSmile) (loc1(2)+prep.draw.rSmile)]; %rectangle defining image left (when diamond in consumption and summary screens)
rect.stim{4}          = [(loc2(1)-prep.draw.rSmile) (loc2(2)-prep.draw.rSmile) ...
    (loc2(1)+prep.draw.rSmile) (loc2(2)+prep.draw.rSmile)]; %rectangle defining image right (when diamond in consumption screen)
%
rect.stim{5}          = [(loc5(1)-prep.draw.rSmile) (loc5(2)-prep.draw.rSmile) ...
    (loc5(1)+prep.draw.rSmile) (loc5(2)+prep.draw.rSmile)]; %rectangle defining feedback and the cookie
rect.stim{6}          = [(loc5(1)-prep.draw.instFrame (1)) (loc5(2)-prep.draw.instFrame (2)) ...
    (loc5(1)+prep.draw.instFrame (1)) (loc5(2)+prep.draw.instFrame (2))]; %rectangle defining instructions
rect.stim{7}          = [(loc9(1)-prep.draw.rSmile) (loc9(2)-prep.draw.rSmile) ...
    (loc9(1)+prep.draw.rSmile) (loc9(2)+prep.draw.rSmile)]; %rectangle defining image left-down (when diamond in consumption screen)
rect.stim{8}          = [(loc6(1)-prep.draw.rSmile) (loc6(2)-prep.draw.rSmile) ...
    (loc6(1)+prep.draw.rSmile) (loc6(2)+prep.draw.rSmile)]; %rectangle defining image left-up (when diamond in consumption screen)


baseRect = [0, 0, imageSizeX, imageSizeY];

 xPosLeft = screenXpixels * 0.2;  %For the response options
 xPosRight = screenXpixels * 0.8; %For the response options
 
% center of the screen
xPos = xCenter;
yPos = yCenter;

dstCenter(:, 1) = CenterRectOnPointd(baseRect, xPos, yPos);

 


CueRect = [xPos, yPos, imageSizeX, imageSizeY];


 fullRect = [0, 0, screenXpixels, screenYpixels];

 dstRectFull(:, 1) = CenterRectOnPointd(fullRect, screenXpixels / 2, yPos);
 
 
PuaghText = Screen('TextBounds', wd, '¡Puagh! A este Alien no le gusto esa galleta');
xPuaghText = (screenXpixels / 2) - (PuaghText(3) / 2);
yPuaghText = (screenYpixels / 1.7) - (PuaghText(4) / 2); 

UmmmText = Screen('TextBounds', wd, 'Ummm! A este Alien le encantó esa galleta');
xUmmmText = (screenXpixels / 2) - (UmmmText(3) / 2);
yUmmmText = (screenYpixels / 1.7) - (UmmmText(4) / 2); 