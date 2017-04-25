%% One can also visualize crystal symmetries by plotting the main axes and+
% the corresponding equivalent directions
h = Miller({1,0,-1,0},{1,1,-2,0},{1,0,-1,1},{1,1,-2,1},{0,0,0,1},cs);

for i = 1:length(h)
  plot(h(i),'symmetrised','labeled','backgroundColor','w','doNotDraw','grid')
  hold all
end
hold off

drawNow(gcm,'figSize','normal')