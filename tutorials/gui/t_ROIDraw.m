%% Draw some shapes (ROIs) on the main axes for ISET windows
%
% The ROIs can be drawn and deleted.
% This is just the beginning of building up ROI capabilities
%
% BW

%%
ieInit

%% Create the baseline windows

scene = sceneCreate;
sceneWindow(scene);

oi  = oiCreate;
oi = oiCompute(oi,scene);
oiWindow(oi);
sensor = sensorCreate;
sensor = sensorCompute(sensor,oi);
sensorWindow(sensor);
ip = ipCreate;
ip = ipCompute(ip,sensor);
ipWindow(ip);

%% Rect on a scene

scene = sceneCreate;
rect = [20 50 10 5];  % row, col, width, height
[shapeHandle,ax] = ieROIDraw('scene','shape','rect','shape data',rect,'line width',5);
shapeHandle.LineStyle = ':';
delete(shapeHandle);

%% Rect on an oi

rect = [50 50 20 20];
[shapeHandle,ax] = ieROIDraw('oi','shape','rect','shape data',rect);
shapeHandle.LineStyle = ':';
shapeHandle.EdgeColor = 'w';
delete(shapeHandle);

%% Circle on an oi

c = [10 20 20];
[shapeHandle,ax] = ieROIDraw('oi','shape','circle','shape data',c);
shapeHandle.LineStyle = ':';
shapeHandle.EdgeColor = 'w';
delete(shapeHandle);

%%  Circle on a sensor

c = [10 20 20];
[shapeHandle,ax] = ieROIDraw('sensor','shape','circle','shape data',c);
shapeHandle.Color = 'w';
delete(shapeHandle);

%% Rect on an IP
rect = [50 50 20 20];
[shapeHandle,ax] = ieROIDraw('ip','shape','rect','shape data',rect);
shapeHandle.EdgeColor = 'g';
delete(shapeHandle);

%% End



