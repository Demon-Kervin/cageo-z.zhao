


% Created by LI Xu
% 8 September, 2014
% Version 1.0


clear;
clc;

% Read 
filename='wind_data.xlsx';
[~, sheets]=xlsfinfo(filename);
n_sheet=length(sheets);

% 1~16 wind direction, 17 no wind
% N	1
% NNE	2
% NE	3
% ENE	4
% E	5
% ESE	6
% SE	7
% SSE	8
% S	9
% SSW	10
% SW	11
% WSW	12
% W	13
% WNW	14
% NW	15
% NNW	16
% C                17
wind_direction=1:17;

for ii=1:n_sheet
    sheetname=sheets{ii};
    % Read data
    data=xlsread(filename, sheetname, 'A2:H5205');
    % Col 6 Maxium Wind Direction
    num_wind=zeros(17, 1);
    for jj=1:17
        ind=find(data(:, 6)==jj);
        num_wind(jj, 1)=length(ind);    
    end
    
    % Convert to rate
    num_wind=num_wind./sum(num_wind);
    num_wind=num_wind';
    
    %%%%%
    % Draw Wind Rose
    clf;
    RoseWind(num_wind);
    
    %%%%%
    picname=strcat(sheetname, '.png');
    export_fig(picname);
    close all;
     
end




