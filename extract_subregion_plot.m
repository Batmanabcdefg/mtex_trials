%% define subregion
region1 = [30 30 15 15]
% draw rectangle in current figure, to see the specified area
rectangle('position',region1,'edgecolor','r','linewidth',2)
% calculate information, which parts of the ebsd lie in the specified region
condition1 = inpolygon(ebsd,region1);
% restrict ebsd-data to specified region
ebsd1 = ebsd(condition1)
% plot ebsd for region 1
figure
plot(ebsd1('Ferrite'),ebsd1('Ferrite').orientations)


% generate ORIENTATIONs clustered around 12 (random) centers
%cs = crystalSymmetry('m-3m');
% center = orientation.rand(12,cs);
% odf = unimodalODF(center,'halfwidth',5*degree)
% ori = odf.calcOrientations(3000);
% [c,center] = cluster(ori,'numCluster',n)



%% predefined textures (orientations for austenite)
% o = orientation('goss',cs,ss)
% or... 
% o = gossOrientation(cs,'param1',val1,'param2',val2)
% o = brassOrientation(cs,'param1',val1,'param2',val2) % returns the brass orientation
% O = cubeOrientation(cs,'param1',val1,'param2',val2)  % returns the cube orientation

%% Let
%h = Miller(1,0,0,cs) 
% be a crystal direction
%o = orientation('Euler',90*degree,90*degree,0*degree,cs,ss)
% a crystal orientation. Then the alignment of this crystal direction with respect to the specimen coordinate system can be computed via 
%r = o * h
% Conversely the crystal direction that is mapped onto a certain specimen direction can be computed via the inverse (backslash operator)
%o \ r

%% defines an ODF by finite elements
%odf = femODF(center, weights)

