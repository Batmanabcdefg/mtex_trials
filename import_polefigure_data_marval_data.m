%% Import Script for PoleFigure Data
%
% This script was automatically created by the import wizard. You should
% run the whoole script or parts of it in order to import your data. There
% is no problem in making any changes to this script.

%% Specify Crystal and Specimen Symmetries

% crystal symmetry
CS = crystalSymmetry('m-3m', [2.88 2.88 2.88], 'mineral', 'Iron-alpha', 'color', 'light blue');

% specimen symmetry
SS = specimenSymmetry('1');

% plotting convention
setMTEXpref('xAxisDirection','north'); % RD
% y --- % TD
setMTEXpref('zAxisDirection','outOfPlane'); % ND

%% Specify File Names

% path to files
pname = '/home/manuel/Downloads/EBSD';

% which files to be imported
fname = [pname '/T32_v1 cleaned-Dil__2MAL--coarsened.ang'];

%% Specify Miller Indice

h = { ...
  Miller(1,1,0,CS),...
  };

%% Import the Data

% create a Pole Figure variable containing the data
pf = loadPoleFigure(fname,h,CS,SS) %,'interface','rigaku');


%% plotting

%plot(pf) % 'contourf')
%mtexColorbar
%When drawing a colorbar next to the pole figure plots it is necessary to have the same color coding in all plots. This can be done as following 
%CLim(gcm,'equal');

%calcPoleFigure allows to simulate diffraction counts given an ODF. It supports superposed pole figures and irregular sampling grids. 
% pf = calcPoleFigure(odf,h,'resolution',5*degree,'antipodal') % 'complete' 


% NOTE: In Polefigures Antipodal symmetry (point reflection through the
% origin matters! and is also present by defautl
% but in the case of pole figures calculated from an ODF antipodal symmetry
% is in general not present. Hence, if one wants to compare calculated pole 
% figures or IPS with experimental ones, one has to add antipodal symmetry.

% odf = ebsd    - 'points',100 or 'all'  
% plotPDF(odf,Miller(1,2,2,CS),'antipodal')
% plotIPDF(odf,yvector,'antipodal','complete')
