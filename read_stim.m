%DATA.counterBalancing = subjectCon; 

%Load cues
if counterBalancing(subjectCon,1) == 1
    stimCue1 = [cd, filesep 'Images' filesep 'Image1.png'];
    stimCue2 = [cd, filesep 'Images' filesep 'Image2.png'];
    stimCue3 = [cd, filesep 'Images' filesep 'Image3.png'];
    stimCue4 = [cd, filesep 'Images' filesep 'Image4.png'];
elseif counterBalancing(subjectCon,1) == 2
    stimCue1 = [cd, filesep 'Images' filesep 'Image4.png'];
    stimCue2 = [cd, filesep 'Images' filesep 'Image1.png'];
    stimCue3 = [cd, filesep 'Images' filesep 'Image2.png'];
    stimCue4 = [cd, filesep 'Images' filesep 'Image3.png'];  
elseif counterBalancing(subjectCon,1) == 3
    stimCue1 = [cd, filesep 'Images' filesep 'Image3.png'];
    stimCue2 = [cd, filesep 'Images' filesep 'Image4.png'];
    stimCue3 = [cd, filesep 'Images' filesep 'Image1.png'];
    stimCue4 = [cd, filesep 'Images' filesep 'Image2.png'];
elseif counterBalancing(subjectCon,1) == 4
    stimCue1 = [cd, filesep 'Images' filesep 'Image2.png'];
    stimCue2 = [cd, filesep 'Images' filesep 'Image3.png'];
    stimCue3 = [cd, filesep 'Images' filesep 'Image4.png'];
    stimCue4 = [cd, filesep 'Images' filesep 'Image1.png'];
end

stimCue1im = imread(stimCue1); 
stimCue2im = imread(stimCue2); 
stimCue3im = imread(stimCue3); 
stimCue4im = imread(stimCue4); 

stimCue1tex = Screen('MakeTexture', wd, stimCue1im); %HV1
stimCue2tex = Screen('MakeTexture', wd, stimCue2im); %HV2
stimCue3tex = Screen('MakeTexture', wd, stimCue3im); %LV1
stimCue4tex = Screen('MakeTexture', wd, stimCue4im); %LV2

%Load outcomes Important: Diamond1.png is Blue; Diamond2.png is Yellow;
%Diamond3.png is Purple
if counterBalancing(subjectCon,2) == 1
    stimOut1 = [cd, filesep 'Images' filesep 'Diamond1.png'];%high value
    stimOut2 = [cd, filesep 'Images' filesep 'Diamond2.png'];%medium value
    stimOut3 = [cd, filesep 'Images' filesep 'Diamond3.png'];%low value
elseif counterBalancing(subjectCon,2) == 2
    stimOut1 = [cd, filesep 'Images' filesep 'Diamond3.png'];%high value
    stimOut2 = [cd, filesep 'Images' filesep 'Diamond1.png'];%medium value
    stimOut3 = [cd, filesep 'Images' filesep 'Diamond2.png'];%low value
elseif counterBalancing(subjectCon,2) == 3
    stimOut1 = [cd, filesep 'Images' filesep 'Diamond2.png'];%high value
    stimOut2 = [cd, filesep 'Images' filesep 'Diamond3.png'];%medium value
    stimOut3 = [cd, filesep 'Images' filesep 'Diamond1.png'];%low value
end

stimOut1im = imread(stimOut1); %high value 
stimOut2im = imread(stimOut2); %medium value
stimOut3im = imread(stimOut3); %low value

stimOut1tex = Screen('MakeTexture', wd, stimOut1im);%high value 
stimOut2tex = Screen('MakeTexture', wd, stimOut2im);%med value 
stimOut3tex = Screen('MakeTexture', wd, stimOut3im);%low value 

%load stimuli related with free consumption trials
%arrows
  stimArrow = [cd, filesep 'Images' filesep 'arrows.png'];%arrows in the centre
  stimArrowim = imread(stimArrow); 
  arrowstex = Screen('MakeTexture', wd, stimArrowim);
  
%load Aliens stimuli(response options)
if counterBalancing(subjectCon,3) == 1
    stimAlienleft = [cd, filesep 'Images' filesep 'Alien1.png'];
    stimAlienright = [cd, filesep 'Images' filesep 'Alien2.png'];
else
    stimAlienleft = [cd, filesep 'Images' filesep 'Alien2.png'];
    stimAlienright = [cd, filesep 'Images' filesep 'Alien1.png'];  
end

stimAlienleftim = imread(stimAlienleft); 
stimAlienrightim = imread(stimAlienright); 
stimAlienlefttex = Screen('MakeTexture', wd, stimAlienleftim);
stimAlienrighttex = Screen('MakeTexture', wd, stimAlienrightim);


%%%%%%%Instructions%%%%%%%%%%%%%%

inst1Loc = [cd, filesep 'Instructions' filesep 'instr1.JPG'];
inst1 = imread(inst1Loc);
instr1 = Screen('MakeTexture', wd, inst1);
inst2Loc = [cd, filesep 'Instructions' filesep 'instr2.JPG'];
inst2 = imread(inst2Loc);
instr2 = Screen('MakeTexture', wd, inst2);
inst3Loc = [cd, filesep 'Instructions' filesep 'instr3.JPG'];
inst3 = imread(inst3Loc);
instr3 = Screen('MakeTexture', wd, inst3);
inst4Loc = [cd, filesep 'Instructions' filesep 'instr4.JPG'];
inst4 = imread(inst4Loc);
instr4 = Screen('MakeTexture', wd, inst4);
inst5Loc = [cd, filesep 'Instructions' filesep 'instr5.JPG'];
inst5 = imread(inst5Loc);
instr5 = Screen('MakeTexture', wd, inst5);
inst6Loc = [cd, filesep 'Instructions' filesep 'instr6.JPG'];
inst6 = imread(inst6Loc);
instr6 = Screen('MakeTexture', wd, inst6);
inst7Loc = [cd, filesep 'Instructions' filesep 'instr7.JPG'];
inst7 = imread(inst7Loc);
instr7 = Screen('MakeTexture', wd, inst7);
inst8Loc = [cd, filesep 'Instructions' filesep 'instr8.JPG'];
inst8 = imread(inst8Loc);
instr8 = Screen('MakeTexture', wd, inst8);
