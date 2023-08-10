workdir = '/System/Volumes/Data/v/raid10/users/sjohnson/Experiment Analysis/Phantoms/2023_02_09_DWI_NISTphantom/';
matdir = '/v/raid10/users/sjohnson/Experiment Analysis/Phantoms/2023_02_09_DWI_NISTphantom/DicomMats/';
addpath(genpath('/v/raid10/users/sjohnson/Matlab Code/Packages/'));
addpath(genpath('/v/raid10/users/sjohnson/Matlab Code/MedImageReslicer/'));

% Signal graphs 

pltfun = functionsPlotting; 
b_keep = [1,3]; 
te_keep = 1;

savedir = '/System/Volumes/Data/v/raid10/users/sjohnson/Experiment Analysis/Phantoms/2023_02_09_DWI_NISTphantom/Figures/';
%%

files = {'REP1_EPI_iPAT3_rot0';}; 
savestr = 'EPI-REP1 - 2b';
vialfile = 'REP1_EPI_vials_rot0';
cax = [0 3200]; 
s=20;

%pltfun.dwiSignal2DImages(files, vialfile, matdir, savedir, savestr, s)

for f = 1:length(files)
    file = files{f}; 
    [dwiData, dwiData_tab] = getDWIfromDICOMs({vialfile}, {file}, false, false); 
    parameters = {{'Filename', files}} ; 
    [~,~,~,~, dwiTable] = getDWIsubset(dwiData, parameters, b_keep, te_keep, s);
    
    pltfun.dwiSignalPlots(dwiTable, vialfile, b_keep, cax, savedir);

end 


%%
files = {'REP1_SOS_26sl_rot0';'REP1_SOS_FS_26sl_rot0'}; 
savestr = 'SOS - no comp - 2b';
vialfile = 'REP1_EPI_vials_rot0'; 
date = '20230209';
cax = [0 1200]; 
s=20;

%pltfun.dwiSignal2DImages(files, vialfile,matdir, savedir, savestr, s)

for f = 1:length(files)
    file = files{f}; 
    [dwiData, dwiData_tab] = getDWIfromDICOMs({vialfile}, {file}, false, false); 
    parameters = {{'Filename', files}} ; 
    [~,~,~,~, dwiTable] = getDWIsubset(dwiData, parameters, b_keep, te_keep, s);
    
    pltfun.dwiSignalPlots(dwiTable, vialfile, b_keep, cax, savedir);

end 

%%

files = {'REP2_SOS_MELV2_d00_rot0';'REP2_SOS_MELV2_d05_rot0';
    'REP2_SOS_MELV2_d10_rot0'; 'REP2_SOS_MELV2_d15_rot0';
    'REP2_SOS_MELV2_d20_rot0';}; 
savestr = 'SOS - 180 comp - 2b';
vialfile = 'REP2_EPI_vials_rot0';
cax = [0 900]; 
s=17;


%pltfun.dwiSignal2DImages(files,vialfile, matdir, savedir, savestr, s)

for f = 1:length(files)
    file = files{f}; 
    [dwiData, dwiData_tab] = getDWIfromDICOMs({vialfile}, {file}, false, false); 
    parameters = {{'Filename', files}} ; 
    [~,~,~,~, dwiTable] = getDWIsubset(dwiData, parameters, b_keep, te_keep, s);
    
    pltfun.dwiSignalPlots(dwiTable, vialfile, b_keep, cax, savedir);

end 

%%

files = {'REP3_SOS_MELV4_d00_rot0';'REP3_SOS_MELV4_d05_rot0';
    'REP3_SOS_MELV4_d10_rot0'; 'REP3_SOS_MELV4_d15_rot0';
    'REP3_SOS_MELV4_d20_rot0';}; 
savestr = 'SOS - 180-90 comp';
vialfile = 'REP3_EPI_vials_rot0';
cax = [0 300]; 
s=13;

pltfun.dwiSignal2DImages(files,vialfile, matdir, savedir, savestr, s)

for f = 1:length(files)
    file = files{f}; 
    [dwiData, dwiData_tab] = getDWIfromDICOMs({vialfile}, {file}, false, false); 
    parameters = {{'Filename', files}} ; 
    [~,~,~,~, dwiTable] = getDWIsubset(dwiData, parameters, b_keep, te_keep, s);
    
    pltfun.dwiSignalPlots(dwiTable, vialfile, b_keep, cax, savedir);

end 

%%


/System/Volumes/Data/v/raid10/users/sjohnson/Experiment Analysis/Phantoms/2023_02_09_DWI_NISTphantom

files = {'REP2_SOS_MELV2_d10_b400_rot270'}; 
savestr = 'SOS - 180 comp b400 - 2b ';
vialfile = 'REP2_EPI_vials_rot0';
cax = [0 900]; 
s=17;

pltfun.dwiSignal2DImages(files,vialfile, matdir, savedir, savestr, s)

for f = 1:length(files)
    file = files{f}; 
    [dwiData, dwiData_tab] = getDWIfromDICOMs({vialfile}, {file}, false, false); 
    parameters = {{'Filename', files}} ; 
    [~,~,~,~, dwiTable] = getDWIsubset(dwiData, parameters, b_keep, te_keep, s);
    
    pltfun.dwiSignalPlots(dwiTable, vialfile, b_keep, cax, savedir);

end 