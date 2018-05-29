
% I have some problems with the vertical retrace. 
Screen('Preference', 'SkipSyncTests', 1);

% Setup PTB with some default values
PsychDefaultSetup(2);

%Hide cursor
HideCursor();



% Seed the random number generator. Here we use the an older way to be
% compatible with older systems. Newer syntax would be rng('shuffle'). Look
% at the help function of rand "help rand" for more information
rand('seed', sum(100 * clock));


% Set the screen number to the external secondary monitor if there is one
% connected
screenNumber = max(Screen('Screens'));

% Define black, white and grey
white = WhiteIndex(screenNumber);
grey = white / 2;
black = BlackIndex(screenNumber);
red = [1 0 0];



% Open the screen wd
[wd, windowRect] = PsychImaging('OpenWindow', screenNumber, black, [], 32, 2);



% Flip to clear
Screen('Flip', wd);


% Query the maximum priority level
topPriorityLevel = MaxPriority(wd);

% Get the centre coordinate of the window
[xCenter, yCenter] = RectCenter(windowRect);
%Number of pixels of the screen
[screenXpixels, screenYpixels] = Screen('WindowSize', wd);

% 
% 
% Some coordinates that I might use for feedback and text on screen 
 resultText1 = screenYpixels * 0.5;  
 resultText2 = screenYpixels * 0.6;  
 resultText3 = screenYpixels * 0.7;
 resultText4 = screenYpixels * 0.8;
 resultText5 = screenYpixels * 0.9;

% Set the blend funciton for the screen
Screen('BlendFunction', wd, 'GL_SRC_ALPHA', 'GL_ONE_MINUS_SRC_ALPHA');

escapeKey = KbName('ESCAPE');
upKey = KbName('UpArrow');
downKey = KbName('DownArrow');
spacebar = KbName('space');
qKey = KbName('q'); %response for the Alien on the left
pKey = KbName('p'); %response for the Alien on the right



Screen('TextFont', wd, 'Arial');
Screen('TextSize', wd, 20);
% Position of the feedback text

feedbacktextRect1 = Screen('TextBounds', wd, '¡Muy lento! Por favor, responde más rápido');
xfeedback1 = (screenXpixels / 2) - (feedbacktextRect1(3) / 2);
yfeedback1 = (screenYpixels / 2) - (feedbacktextRect1(4) / 2);

feedbacktextRect2 = Screen('TextBounds', wd, '+1');
xfeedback2 = (screenXpixels / 2) - (feedbacktextRect2(3) / 2);
yfeedback2 = (screenYpixels / 2) - (feedbacktextRect2(4) / 2);

feedbacktextRect3 = Screen('TextBounds', wd, '+100');
xfeedback3 = (screenXpixels / 2) - (feedbacktextRect3(3) / 2);
yfeedback3 = (screenYpixels / 2) - (feedbacktextRect3(4) / 2);

feedbacktextRect4 = Screen('TextBounds', wd, 'ERROR');
xfeedback4 = (screenXpixels / 2) - (feedbacktextRect4(3) / 2);
yfeedback4 = (screenYpixels / 2) - (feedbacktextRect4(4) / 2);

totalTrial = 0; 
numBlue = 0;
numYell = 0;
numGreen = 0;
valueBlue = 0;
valueYell = 0;
valueGreen = 0;
normaltrial = 0;
diamondevaluated = 0;
tooearly = 0;
blockType = 3;
AlienPosition = 0;
HVpoints = 0 ;
MVpoints = 0 ;
LVpoints = 0 ;
numHV = 0 ;
numMV = 0 ;
numLV = 0 ;
actualHVvalue = 0 ;
actualMVvalue = 0 ;
actualLVvalue = 0 ;
timeLimit = 0;

