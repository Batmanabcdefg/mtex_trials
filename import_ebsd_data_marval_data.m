%% Import Script for EBSD Data
%
% This script was automatically created by the import wizard. You should
% run the whoole script or parts of it in order to import your data. There
% is no problem in making any changes to this script.

%% Specify Crystal and Specimen Symmetries

% crystal symmetry
CS = {... 
  %crystalSymmetry('m-3m', [2.8807 2.8807 2.8807], 'mineral', 'Iron-alpha',
  %'color', 'light blue'),... --- ZERO ORIENTATIONS OF THIS KIND FOUND IN
  %ANG FILE...
  crystalSymmetry('432', [2.88 2.88 2.88], 'mineral', 'Ferrite', 'color', 'light blue')};
  % loaded from predefined CIF file!

% plotting convention - same as in OIM
setMTEXpref('xAxisDirection','north');
setMTEXpref('zAxisDirection','outOfPlane');
setMTEXpref('showCoordinates','on')

%% Specify File Names

% path to files
pname = '/home/manuel/Downloads/EBSD';

% which files to be imported
fname = [pname '/T32_v1_cleaned-Dil_2MAL--coarsened.ang'];

%% Import the Data

% create an EBSD variable containing the data
ebsd = loadEBSD(fname,CS,'interface','ang',...
  'convertEuler2SpatialReferenceFrame');

%% plot ebsd (caution: if the ebsd image is relatively large, the plotting time is high)
%figure
%plot(ebsd('Ferrite'),ebsd('Ferrite').orientations)

%oM = ipdfHSVOrientationMapping(ebsd);
% plot(ebsd,oM.orientation2color(ebsd.orientations))



