
clc
clear
close all
%%
load NN.mat
Number=NN;

Reg = 1;

%%
for ii = 1: Number
load(['spikes0T' num2str(ii) '.mat'])

%Data_45_C1(ii,:)=Reg*sum1;
Data_0_C2(ii,:)=Reg*sum2;
%Data_45_C3(ii,:)=Reg*sum3;

end
clear sum1 sum2 sum3
%%
for ii = 1: Number
load(['spikes11T' num2str(ii) '.mat'])

%Data_45_C1(ii,:)=Reg*sum1;
Data_11_C2(ii,:)=Reg*sum2;
%Data_45_C3(ii,:)=Reg*sum3;

end
clear sum1 sum2 sum3
%%
for ii = 1: Number
load(['spikes22T' num2str(ii) '.mat'])

%Data_45_C1(ii,:)=Reg*sum1;
Data_22_C2(ii,:)=Reg*sum2;
%Data_45_C3(ii,:)=Reg*sum3;

end
clear sum1 sum2 sum3
%%
for ii = 1: Number
load(['spikes33T' num2str(ii) '.mat'])

%Data_45_C1(ii,:)=Reg*sum1;
Data_33_C2(ii,:)=Reg*sum2;
%Data_45_C3(ii,:)=Reg*sum3;

end
clear sum1 sum2 sum3
%%
for ii = 1: Number
load(['spikes45T' num2str(ii) '.mat'])

%Data_45_C1(ii,:)=Reg*sum1;
Data_45_C2(ii,:)=Reg*sum2;
%Data_45_C3(ii,:)=Reg*sum3;

end
clear sum1 sum2 sum3
%%
for ii = 1: Number
load(['spikes56T' num2str(ii) '.mat'])

%Data_56_C1(ii,:)=Reg*sum1;
Data_56_C2(ii,:)=Reg*sum2;
%Data_56_C3(ii,:)=Reg*sum3;

end
clear sum1 sum2 sum3
%%

for ii = 1: Number
load(['spikes67T' num2str(ii) '.mat'])

%Data_67_C1(ii,:)=Reg*sum1;
Data_67_C2(ii,:)=Reg*sum2;
%Data_67_C3(ii,:)=Reg*sum3;

end
clear sum1 sum2 sum3

for ii = 1: Number
load(['spikes78T' num2str(ii) '.mat'])

%Data_78_C1(ii,:)=Reg*sum1;
Data_78_C2(ii,:)=Reg*sum2;
%Data_78_C3(ii,:)=Reg*sum3;

end
clear sum1 sum2 sum3
%%

for ii = 1: Number
load(['spikes90T' num2str(ii) '.mat'])

%Data_90_C1(ii,:)=Reg*sum1;
Data_90_C2(ii,:)=Reg*sum2;
%Data_90_C3(ii,:)=Reg*sum3;

end
clear sum1 sum2 sum3

for ii = 1: Number
load(['spikes101T' num2str(ii) '.mat'])

%Data_101_C1(ii,:)=Reg*sum1;
Data_101_C2(ii,:)=Reg*sum2;
%Data_101_C3(ii,:)=Reg*sum3;

end
clear sum1 sum2 sum3
%%

for ii = 1: Number
load(['spikes112T' num2str(ii) '.mat'])

%Data_112_C1(ii,:)=Reg*sum1;
Data_112_C2(ii,:)=Reg*sum2;
%Data_112_C3(ii,:)=Reg*sum3;

end
clear sum1 sum2 sum3

for ii = 1: Number
load(['spikes123T' num2str(ii) '.mat'])

%Data_123_C1(ii,:)=Reg*sum1;
Data_123_C2(ii,:)=Reg*sum2;
%Data_123_C3(ii,:)=Reg*sum3;

end
clear sum1 sum2 sum3
%%

for ii = 1: Number
load(['spikes135T' num2str(ii) '.mat'])

%Data_135_C1(ii,:)=Reg*sum1;
Data_135_C2(ii,:)=Reg*sum2;
%Data_135_C3(ii,:)=Reg*sum3;

end
clear sum1 sum2 sum3
%%
for ii = 1: Number
load(['spikes146T' num2str(ii) '.mat'])

%Data_45_C1(ii,:)=Reg*sum1;
Data_146_C2(ii,:)=Reg*sum2;
%Data_45_C3(ii,:)=Reg*sum3;

end
clear sum1 sum2 sum3
%%
for ii = 1: Number
load(['spikes157T' num2str(ii) '.mat'])

%Data_45_C1(ii,:)=Reg*sum1;
Data_157_C2(ii,:)=Reg*sum2;
%Data_45_C3(ii,:)=Reg*sum3;

end
clear sum1 sum2 sum3
%%
for ii = 1: Number
load(['spikes168T' num2str(ii) '.mat'])

%Data_45_C1(ii,:)=Reg*sum1;
Data_168_C2(ii,:)=Reg*sum2;
%Data_45_C3(ii,:)=Reg*sum3;

end
clear sum1 sum2 sum3
%%
for ii = 1: Number
load(['spikes180T' num2str(ii) '.mat'])

%Data_45_C1(ii,:)=Reg*sum1;
Data_180_C2(ii,:)=Reg*sum2;
%Data_45_C3(ii,:)=Reg*sum3;

end
clear sum1 sum2 sum3
%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Pick up a Cell  (1-50 Column 1) (61-110 Column 2) (121-170 Column 3)  
% Rest of the code is for 1 cell in each layer

% A cell from  three columns in each layer Layers: 2 4 5 6 
% Layer #6

%Cell_Number_C1= 100; %12;
Cell_Number_C2= 32+25; %50+128;
%Cell_Number_C3= 400; %128+510+12;

% S_0_C1=Data_0_C1(:,Cell_Number_C1);
% S_11_C1=Data_11_C1(:,Cell_Number_C1);
% S_22_C1=Data_22_C1(:,Cell_Number_C1);
% S_33_C1=Data_33_C1(:,Cell_Number_C1);
% S_45_C1=Data_45_C1(:,Cell_Number_C1);
% S_56_C1=Data_56_C1(:,Cell_Number_C1);
% S_67_C1=Data_67_C1(:,Cell_Number_C1);
% S_78_C1=Data_78_C1(:,Cell_Number_C1);
% S_90_C1=Data_90_C1(:,Cell_Number_C1);
% S_101_C1=Data_101_C1(:,Cell_Number_C1);
% S_112_C1=Data_112_C1(:,Cell_Number_C1);
% S_123_C1=Data_123_C1(:,Cell_Number_C1);
% S_135_C1=Data_135_C1(:,Cell_Number_C1);
% S_146_C1=Data_146_C1(:,Cell_Number_C1);
% S_157_C1=Data_157_C1(:,Cell_Number_C1);
% S_168_C1=Data_168_C1(:,Cell_Number_C1);
% S_180_C1=Data_180_C1(:,Cell_Number_C1);

S_0_C2=Data_0_C2(:,Cell_Number_C2);
S_11_C2=Data_11_C2(:,Cell_Number_C2);
S_22_C2=Data_22_C2(:,Cell_Number_C2);
S_33_C2=Data_33_C2(:,Cell_Number_C2);
S_45_C2=Data_45_C2(:,Cell_Number_C2);
S_56_C2=Data_56_C2(:,Cell_Number_C2);
S_67_C2=Data_67_C2(:,Cell_Number_C2);
S_78_C2=Data_78_C2(:,Cell_Number_C2);
S_90_C2=Data_90_C2(:,Cell_Number_C2);
S_101_C2=Data_101_C2(:,Cell_Number_C2);
S_112_C2=Data_112_C2(:,Cell_Number_C2);
S_123_C2=Data_123_C2(:,Cell_Number_C2);
S_135_C2=Data_135_C2(:,Cell_Number_C2);
S_146_C2=Data_146_C2(:,Cell_Number_C2);
S_157_C2=Data_157_C2(:,Cell_Number_C2);
S_168_C2=Data_168_C2(:,Cell_Number_C2);
S_180_C2=Data_180_C2(:,Cell_Number_C2);

% S_0_C3=Data_0_C3(:,Cell_Number_C3);
% S_11_C3=Data_11_C3(:,Cell_Number_C3);
% S_22_C3=Data_22_C3(:,Cell_Number_C3);
% S_33_C3=Data_33_C3(:,Cell_Number_C3);
% S_45_C3=Data_45_C3(:,Cell_Number_C3);
% S_56_C3=Data_56_C3(:,Cell_Number_C3);
% S_67_C3=Data_67_C3(:,Cell_Number_C3);
% S_78_C3=Data_78_C3(:,Cell_Number_C3);
% S_90_C3=Data_90_C3(:,Cell_Number_C3);
% S_101_C3=Data_101_C3(:,Cell_Number_C3);
% S_112_C3=Data_112_C3(:,Cell_Number_C3);
% S_123_C3=Data_123_C3(:,Cell_Number_C3);
% S_135_C3=Data_135_C3(:,Cell_Number_C3);
% S_146_C3=Data_146_C3(:,Cell_Number_C3);
% S_157_C3=Data_157_C3(:,Cell_Number_C3);
% S_168_C3=Data_168_C3(:,Cell_Number_C3);
% S_180_C3=Data_180_C3(:,Cell_Number_C3);
%
%S_C1_Layer2=[S_0_C1,S_11_C1,S_22_C1,S_33_C1,S_45_C1,S_56_C1,S_67_C1,S_78_C1,S_90_C1,S_101_C1,S_112_C1,S_123_C1,S_135_C1,S_146_C1,S_157_C1,S_168_C1,S_180_C1] %,S_157,S_180]
%S_C2_Layer2=[S_0_C2,S_11_C2,S_22_C2,S_33_C2,S_45_C2,S_56_C2,S_67_C2,S_78_C2,S_90_C2,S_101_C2,S_112_C2,S_123_C2,S_135_C2,S_146_C2,S_157_C2,S_168_C2,S_180_C2] %,S_157,S_180]
S_C2_Layer2=[S_0_C2,S_11_C2,S_22_C2,S_33_C2,S_45_C2,S_56_C2,S_67_C2,S_78_C2,S_90_C2,S_101_C2,S_112_C2,S_123_C2,S_135_C2,S_146_C2,S_157_C2,S_168_C2,S_180_C2] %,S_157,S_180]
%S_C3_Layer2=[S_0_C3,S_11_C3,S_22_C3,S_33_C3,S_45_C3,S_56_C3,S_67_C3,S_78_C3,S_90_C3,S_101_C3,S_112_C3,S_123_C3,S_135_C3,S_146_C3,S_157_C3,S_168_C3,S_180_C3] %,S_157,S_180]

%% 
% Layer 5

%Cell_Number_C1=%32+12;
Cell_Number_C2=32+63+32+32+25; %128+128+50;
%Cell_Number_C3=%128+510+32+12;
% 
% S_0_C1=Data_0_C1(:,Cell_Number_C1);
% S_11_C1=Data_11_C1(:,Cell_Number_C1);
% S_22_C1=Data_22_C1(:,Cell_Number_C1);
% S_33_C1=Data_33_C1(:,Cell_Number_C1);
% S_45_C1=Data_45_C1(:,Cell_Number_C1);
% S_56_C1=Data_56_C1(:,Cell_Number_C1);
% S_67_C1=Data_67_C1(:,Cell_Number_C1);
% S_78_C1=Data_78_C1(:,Cell_Number_C1);
% S_90_C1=Data_90_C1(:,Cell_Number_C1);
% S_101_C1=Data_101_C1(:,Cell_Number_C1);
% S_112_C1=Data_112_C1(:,Cell_Number_C1);
% S_123_C1=Data_123_C1(:,Cell_Number_C1);
% S_135_C1=Data_135_C1(:,Cell_Number_C1);
% S_146_C1=Data_146_C1(:,Cell_Number_C1);
% S_157_C1=Data_157_C1(:,Cell_Number_C1);
% S_168_C1=Data_168_C1(:,Cell_Number_C1);
% S_180_C1=Data_180_C1(:,Cell_Number_C1);

S_0_C2=Data_0_C2(:,Cell_Number_C2);
S_11_C2=Data_11_C2(:,Cell_Number_C2);
S_22_C2=Data_22_C2(:,Cell_Number_C2);
S_33_C2=Data_33_C2(:,Cell_Number_C2);
S_45_C2=Data_45_C2(:,Cell_Number_C2);
S_56_C2=Data_56_C2(:,Cell_Number_C2);
S_67_C2=Data_67_C2(:,Cell_Number_C2);
S_78_C2=Data_78_C2(:,Cell_Number_C2);
S_90_C2=Data_90_C2(:,Cell_Number_C2);
S_101_C2=Data_101_C2(:,Cell_Number_C2);
S_112_C2=Data_112_C2(:,Cell_Number_C2);
S_123_C2=Data_123_C2(:,Cell_Number_C2);
S_135_C2=Data_135_C2(:,Cell_Number_C2);
S_146_C2=Data_146_C2(:,Cell_Number_C2);
S_157_C2=Data_157_C2(:,Cell_Number_C2);
S_168_C2=Data_168_C2(:,Cell_Number_C2);
S_180_C2=Data_180_C2(:,Cell_Number_C2);

% S_0_C3=Data_0_C3(:,Cell_Number_C3);
% S_11_C3=Data_11_C3(:,Cell_Number_C3);
% S_22_C3=Data_22_C3(:,Cell_Number_C3);
% S_33_C3=Data_33_C3(:,Cell_Number_C3);
% S_45_C3=Data_45_C3(:,Cell_Number_C3);
% S_56_C3=Data_56_C3(:,Cell_Number_C3);
% S_67_C3=Data_67_C3(:,Cell_Number_C3);
% S_78_C3=Data_78_C3(:,Cell_Number_C3);
% S_90_C3=Data_90_C3(:,Cell_Number_C3);
% S_101_C3=Data_101_C3(:,Cell_Number_C3);
% S_112_C3=Data_112_C3(:,Cell_Number_C3);
% S_123_C3=Data_123_C3(:,Cell_Number_C3);
% S_135_C3=Data_135_C3(:,Cell_Number_C3);
% S_146_C3=Data_146_C3(:,Cell_Number_C3);
% S_157_C3=Data_157_C3(:,Cell_Number_C3);
% S_168_C3=Data_168_C3(:,Cell_Number_C3);
% S_180_C3=Data_180_C3(:,Cell_Number_C3);

%S_C1_Layer4=[S_0_C1,S_11_C1,S_22_C1,S_33_C1,S_45_C1,S_56_C1,S_67_C1,S_78_C1,S_90_C1,S_101_C1,S_112_C1,S_123_C1,S_135_C1,S_146_C1,S_157_C1,S_168_C1,S_180_C1] %,S_157,S_180]
%S_C2_Layer4=[S_0_C2,S_11_C2,S_22_C2,S_33_C2,S_45_C2,S_56_C2,S_67_C2,S_78_C2,S_90_C2,S_101_C2,S_112_C2,S_123_C2,S_135_C2,S_146_C2,S_157_C2,S_168_C2,S_180_C2] %,S_157,S_180]
S_C2_Layer4=[S_0_C2,S_11_C2,S_22_C2,S_33_C2,S_45_C2,S_56_C2,S_67_C2,S_78_C2,S_90_C2,S_101_C2,S_112_C2,S_123_C2,S_135_C2,S_146_C2,S_157_C2,S_168_C2,S_180_C2] %,S_157,S_180];
%S_C3_Layer4=[S_0_C3,S_11_C3,S_22_C3,S_33_C3,S_45_C3,S_56_C3,S_67_C3,S_78_C3,S_90_C3,S_101_C3,S_112_C3,S_123_C3,S_135_C3,S_146_C3,S_157_C3,S_168_C3,S_180_C3] %,S_157,S_180]
%
%%
% Layer 4
%Cell_Number_C1=64+12;
Cell_Number_C2= 32+63+32+32+63+32+32+25; %128+128+128+50;
%Cell_Number_C3=128+510+32+32+12;

% S_0_C1=Data_0_C1(:,Cell_Number_C1);
% S_11_C1=Data_11_C1(:,Cell_Number_C1);
% S_22_C1=Data_22_C1(:,Cell_Number_C1);
% S_33_C1=Data_33_C1(:,Cell_Number_C1);
% S_45_C1=Data_45_C1(:,Cell_Number_C1);
% S_56_C1=Data_56_C1(:,Cell_Number_C1);
% S_67_C1=Data_67_C1(:,Cell_Number_C1);
% S_78_C1=Data_78_C1(:,Cell_Number_C1);
% S_90_C1=Data_90_C1(:,Cell_Number_C1);
% S_101_C1=Data_101_C1(:,Cell_Number_C1);
% S_112_C1=Data_112_C1(:,Cell_Number_C1);
% S_123_C1=Data_123_C1(:,Cell_Number_C1);
% S_135_C1=Data_135_C1(:,Cell_Number_C1);
% S_146_C1=Data_146_C1(:,Cell_Number_C1);
% S_157_C1=Data_157_C1(:,Cell_Number_C1);
% S_168_C1=Data_168_C1(:,Cell_Number_C1);
% S_180_C1=Data_180_C1(:,Cell_Number_C1);

S_0_C2=Data_0_C2(:,Cell_Number_C2);
S_11_C2=Data_11_C2(:,Cell_Number_C2);
S_22_C2=Data_22_C2(:,Cell_Number_C2);
S_33_C2=Data_33_C2(:,Cell_Number_C2);
S_45_C2=Data_45_C2(:,Cell_Number_C2);
S_56_C2=Data_56_C2(:,Cell_Number_C2);
S_67_C2=Data_67_C2(:,Cell_Number_C2);
S_78_C2=Data_78_C2(:,Cell_Number_C2);
S_90_C2=Data_90_C2(:,Cell_Number_C2);
S_101_C2=Data_101_C2(:,Cell_Number_C2);
S_112_C2=Data_112_C2(:,Cell_Number_C2);
S_123_C2=Data_123_C2(:,Cell_Number_C2);
S_135_C2=Data_135_C2(:,Cell_Number_C2);
S_146_C2=Data_146_C2(:,Cell_Number_C2);
S_157_C2=Data_157_C2(:,Cell_Number_C2);
S_168_C2=Data_168_C2(:,Cell_Number_C2);
S_180_C2=Data_180_C2(:,Cell_Number_C2);

% S_0_C3=Data_0_C3(:,Cell_Number_C3);
% S_11_C3=Data_11_C3(:,Cell_Number_C3);
% S_22_C3=Data_22_C3(:,Cell_Number_C3);
% S_33_C3=Data_33_C3(:,Cell_Number_C3);
% S_45_C3=Data_45_C3(:,Cell_Number_C3);
% S_56_C3=Data_56_C3(:,Cell_Number_C3);
% S_67_C3=Data_67_C3(:,Cell_Number_C3);
% S_78_C3=Data_78_C3(:,Cell_Number_C3);
% S_90_C3=Data_90_C3(:,Cell_Number_C3);
% S_101_C3=Data_101_C3(:,Cell_Number_C3);
% S_112_C3=Data_112_C3(:,Cell_Number_C3);
% S_123_C3=Data_123_C3(:,Cell_Number_C3);
% S_135_C3=Data_135_C3(:,Cell_Number_C3);
% S_146_C3=Data_146_C3(:,Cell_Number_C3);
% S_157_C3=Data_157_C3(:,Cell_Number_C3);
% S_168_C3=Data_168_C3(:,Cell_Number_C3);
% S_180_C3=Data_180_C3(:,Cell_Number_C3);

%S_C1_Layer5=[S_0_C1,S_11_C1,S_22_C1,S_33_C1,S_45_C1,S_56_C1,S_67_C1,S_78_C1,S_90_C1,S_101_C1,S_112_C1,S_123_C1,S_135_C1,S_146_C1,S_157_C1,S_168_C1,S_180_C1] %,S_157,S_180]
%S_C2_Layer5=[S_0_C2,S_11_C2,S_22_C2,S_33_C2,S_45_C2,S_56_C2,S_67_C2,S_78_C2,S_90_C2,S_101_C2,S_112_C2,S_123_C2,S_135_C2,S_146_C2,S_157_C2,S_168_C2,S_180_C2] %,S_157,S_180]
S_C2_Layer5=[S_0_C2,S_11_C2,S_22_C2,S_33_C2,S_45_C2,S_56_C2,S_67_C2,S_78_C2,S_90_C2,S_101_C2,S_112_C2,S_123_C2,S_135_C2,S_146_C2,S_157_C2,S_168_C2,S_180_C2] %,S_157,S_180]

%S_C3_Layer5=[S_0_C3,S_11_C3,S_22_C3,S_33_C3,S_45_C3,S_56_C3,S_67_C3,S_78_C3,S_90_C3,S_101_C3,S_112_C3,S_123_C3,S_135_C3,S_146_C3,S_157_C3,S_168_C3,S_180_C3] %,S_157,S_180]
%
%%
% Layer 2

%Cell_Number_C1=96+12;
Cell_Number_C2= 32+63+32+32+63+32+32+64+32+32+25; %128+128+128+129+50;
%Cell_Number_C3=128+510+32+32+32+12;

% S_0_C1=Data_0_C1(:,Cell_Number_C1);
% S_11_C1=Data_11_C1(:,Cell_Number_C1);
% S_22_C1=Data_22_C1(:,Cell_Number_C1);
% S_33_C1=Data_33_C1(:,Cell_Number_C1);
% S_45_C1=Data_45_C1(:,Cell_Number_C1);
% S_56_C1=Data_56_C1(:,Cell_Number_C1);
% S_67_C1=Data_67_C1(:,Cell_Number_C1);
% S_78_C1=Data_78_C1(:,Cell_Number_C1);
% S_90_C1=Data_90_C1(:,Cell_Number_C1);
% S_101_C1=Data_101_C1(:,Cell_Number_C1);
% S_112_C1=Data_112_C1(:,Cell_Number_C1);
% S_123_C1=Data_123_C1(:,Cell_Number_C1);
% S_135_C1=Data_135_C1(:,Cell_Number_C1);
% S_146_C1=Data_146_C1(:,Cell_Number_C1);
% S_157_C1=Data_157_C1(:,Cell_Number_C1);
% S_168_C1=Data_168_C1(:,Cell_Number_C1);
% S_180_C1=Data_180_C1(:,Cell_Number_C1);

S_0_C2=Data_0_C2(:,Cell_Number_C2);
S_11_C2=Data_11_C2(:,Cell_Number_C2);
S_22_C2=Data_22_C2(:,Cell_Number_C2);
S_33_C2=Data_33_C2(:,Cell_Number_C2);
S_45_C2=Data_45_C2(:,Cell_Number_C2);
S_56_C2=Data_56_C2(:,Cell_Number_C2);
S_67_C2=Data_67_C2(:,Cell_Number_C2);
S_78_C2=Data_78_C2(:,Cell_Number_C2);
S_90_C2=Data_90_C2(:,Cell_Number_C2);
S_101_C2=Data_101_C2(:,Cell_Number_C2);
S_112_C2=Data_112_C2(:,Cell_Number_C2);
S_123_C2=Data_123_C2(:,Cell_Number_C2);
S_135_C2=Data_135_C2(:,Cell_Number_C2);
S_146_C2=Data_146_C2(:,Cell_Number_C2);
S_157_C2=Data_157_C2(:,Cell_Number_C2);
S_168_C2=Data_168_C2(:,Cell_Number_C2);
S_180_C2=Data_180_C2(:,Cell_Number_C2);

% S_0_C3=Data_0_C3(:,Cell_Number_C3);
% S_11_C3=Data_11_C3(:,Cell_Number_C3);
% S_22_C3=Data_22_C3(:,Cell_Number_C3);
% S_33_C3=Data_33_C3(:,Cell_Number_C3);
% S_45_C3=Data_45_C3(:,Cell_Number_C3);
% S_56_C3=Data_56_C3(:,Cell_Number_C3);
% S_67_C3=Data_67_C3(:,Cell_Number_C3);
% S_78_C3=Data_78_C3(:,Cell_Number_C3);
% S_90_C3=Data_90_C3(:,Cell_Number_C3);
% S_101_C3=Data_101_C3(:,Cell_Number_C3);
% S_112_C3=Data_112_C3(:,Cell_Number_C3);
% S_123_C3=Data_123_C3(:,Cell_Number_C3);
% S_135_C3=Data_135_C3(:,Cell_Number_C3);
% S_146_C3=Data_146_C3(:,Cell_Number_C3);
% S_157_C3=Data_157_C3(:,Cell_Number_C3);
% S_168_C3=Data_168_C3(:,Cell_Number_C3);
% S_180_C3=Data_180_C3(:,Cell_Number_C3);

%S_C1_Layer6=[S_0_C1,S_11_C1,S_22_C1,S_33_C1,S_45_C1,S_56_C1,S_67_C1,S_78_C1,S_90_C1,S_101_C1,S_112_C1,S_123_C1,S_135_C1,S_146_C1,S_157_C1,S_168_C1,S_180_C1] %,S_157,S_180]
%S_C2_Layer6=[S_0_C2,S_11_C2,S_22_C2,S_33_C2,S_45_C2,S_56_C2,S_67_C2,S_78_C2,S_90_C2,S_101_C2,S_112_C2,S_123_C2,S_135_C2,S_146_C2,S_157_C2,S_168_C2,S_180_C2] %,S_157,S_180]
S_C2_Layer6=[S_0_C2,S_11_C2,S_22_C2,S_33_C2,S_45_C2,S_56_C2,S_67_C2,S_78_C2,S_90_C2,S_101_C2,S_112_C2,S_123_C2,S_135_C2,S_146_C2,S_157_C2,S_168_C2,S_180_C2] %,S_157,S_180]
%S_C3_Layer6=[S_0_C3,S_11_C3,S_22_C3,S_33_C3,S_45_C3,S_56_C3,S_67_C3,S_78_C3,S_90_C3,S_101_C3,S_112_C3,S_123_C3,S_135_C3,S_146_C3,S_157_C3,S_168_C3,S_180_C3] %,S_157,S_180]
%
%%

 figure;
% 
% plot(mean(S_C1_Layer2))
% hold on;
%  plot(mean(S_C1_Layer4))
%  plot(mean(S_C1_Layer5))
%  plot(mean(S_C1_Layer6))
 
 plot(mean(S_C2_Layer2))
hold on;
 plot(mean(S_C2_Layer4))
 plot(mean(S_C2_Layer5))
 plot(mean(S_C2_Layer6))
 
%  plot(mean(S_C3_Layer2))
% hold on;
%  plot(mean(S_C3_Layer4))
%  plot(mean(S_C3_Layer5))
%  plot(mean(S_C3_Layer6))
 title('A cell with orientation preference of 90 degrees ')
legend('L2', 'L4', 'L5', 'L6','FontSize',12,'TextColor','black')
 %% mean of 4 cells

figure

%S_ALLlayer_C1=[S_C1_Layer2; S_C1_Layer4; S_C1_Layer5; S_C1_Layer6;];

S_ALLlayer_C2=[S_C2_Layer2; S_C2_Layer4; S_C2_Layer5; S_C2_Layer6;];

%S_ALLlayer_C3=[S_C3_Layer2; S_C3_Layer4; S_C3_Layer5; S_C3_Layer6;];

%plot(mean(S_ALLlayer_C1),'LineWidth',4)
hold on;
plot(mean(S_ALLlayer_C2),'LineWidth',4)
%plot(mean(S_ALLlayer_C3),'LineWidth',4)

% 0 ;11.25; 22.5; 33.75; 45; 56.25; 67.5; 78.75; 90; 101.25; 112.5; 123.75; 135; 146.25; 157.5; 168.75; 180
a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',18,'FontWeight','bold')

xticks([0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 ])
xticklabels([ 0; 0;11.25; 22.5; 33.75; 45; 56.25; 67.5; 78.75; 90; 101.25; 112.5; 123.75; 135; 146.25; 157.5; 168.75; 180])

% xticks([0 1 2 3 4 5 6 7 8 ])
% xticklabels([0; 45; 56.25; 67.5; 78.75; 90; 101.25; 112.5; 123.75; 135])

% xticks([0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 ])
% xticklabels([ 0; 56.25; 67.5; 78.75; 90; 101.25; 112.5; 123.75; 135; ])

xlabel('Orientations ({\circ})' )
ylabel('Firing rates (HZ)')
legend('1^{st} Column','2^{nd} Column', '3^{rd} Column' )
title ('Mean firing rates in Column for 4 cells')
%xticklabels
box off

%%
figure
subplot(2,2,1)
x = 1:17; 
% N = size(S_C1_Layer2,1);
% y = mean(S_C1_Layer2);
% SEM = std(S_C1_Layer2) / sqrt(N);                    % Standard Error Of The Mean
% CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
% errorbar(x, y, CI95,'LineWidth',1)
% grid off
% hold on;

N = size(S_C2_Layer2,1);
y = mean(S_C2_Layer2);
SEM = std(S_C2_Layer2) / sqrt(N);                    % Standard Error Of The Mean
CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
errorbar(x, y, CI95,'LineWidth',3)
grid off
hold on;
title ('A cell in Layer 2/3 in all Columns')

% N = size(S_C3_Layer2,1);
% y = mean(S_C3_Layer2);
% SEM = std(S_C3_Layer2) / sqrt(N);                    % Standard Error Of The Mean
% CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
% errorbar(x, y, CI95,'LineWidth',3)
% grid off
% hold off;
% title ('A cell in Layer 2/3 in all Columns')

%
%figure
subplot(2,2,2)
x = 1:17; 
% N = size(S_C1_Layer4,1);
% y = mean(S_C1_Layer4);
% SEM = std(S_C1_Layer4) / sqrt(N);                    % Standard Error Of The Mean
% CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
% errorbar(x, y, CI95,'LineWidth',1)
% grid off
% hold on;

N = size(S_C2_Layer4,1);
y = mean(S_C2_Layer4);
SEM = std(S_C2_Layer4) / sqrt(N);                    % Standard Error Of The Mean
CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
errorbar(x, y, CI95,'LineWidth',3)
grid off
hold on;
title ('A cell in Layer 4 in all Columns')

% N = size(S_C3_Layer4,1);
% y = mean(S_C3_Layer4);
% SEM = std(S_C3_Layer4) / sqrt(N);                    % Standard Error Of The Mean
% CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
% errorbar(x, y, CI95,'LineWidth',3)
% grid off
% hold off;
% title ('A cell in Layer 4 in all Columns')

%
%figure
subplot(2,2,3)
x = 1:17; 
% N = size(S_C1_Layer5,1);
% y = mean(S_C1_Layer5);
% SEM = std(S_C1_Layer5) / sqrt(N);                    % Standard Error Of The Mean
% CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
% errorbar(x, y, CI95,'LineWidth',1)
% grid off
% hold on;

N = size(S_C2_Layer5,1);
y = mean(S_C2_Layer5);
SEM = std(S_C2_Layer5) / sqrt(N);                    % Standard Error Of The Mean
CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
errorbar(x, y, CI95,'LineWidth',3)
grid off
hold on;
title ('A cell in Layer 5 in all Columns')

% N = size(S_C3_Layer5,1);
% y = mean(S_C3_Layer5);
% SEM = std(S_C3_Layer5) / sqrt(N);                    % Standard Error Of The Mean
% CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
% errorbar(x, y, CI95,'LineWidth',3)
% grid off
% hold off;
% title ('A cell in Layer 5 in all Columns')

%
%figure

subplot(2,2,4)
x = 1:17; 
% N = size(S_C1_Layer6,1);
% y = mean(S_C1_Layer6);
% SEM = std(S_C1_Layer6) / sqrt(N);                    % Standard Error Of The Mean
% CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
% errorbar(x, y, CI95,'LineWidth',1)
% grid off
% hold on;

N = size(S_C2_Layer6,1);
y = mean(S_C2_Layer6);
SEM = std(S_C2_Layer6) / sqrt(N);                    % Standard Error Of The Mean
CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
errorbar(x, y, CI95,'LineWidth',3)
grid off
hold on;
title ('A cell in Layer 6 in all Columns')

% N = size(S_C3_Layer6,1);
% y = mean(S_C3_Layer6);
% SEM = std(S_C3_Layer6) / sqrt(N);                    % Standard Error Of The Mean
% CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
% errorbar(x, y, CI95,'LineWidth',3)
% grid off
% hold off;
% title ('A cell in Layer 6 in all Columns')
%%
figure;
subplot(3,1,1)
x = 1:17; 
% N = size(S_C1_Layer2,1);
% y = mean(S_C1_Layer2);
% SEM = std(S_C1_Layer2) / sqrt(N);                    % Standard Error Of The Mean
% CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
% errorbar(x, y, CI95,'LineWidth',1)
% grid off
% hold on;

% N = size(S_C1_Layer4,1);
% y = mean(S_C1_Layer4);
% SEM = std(S_C1_Layer4) / sqrt(N);                    % Standard Error Of The Mean
% CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
% errorbar(x, y, CI95,'LineWidth',2)
% grid off
% hold on;

% N = size(S_C1_Layer5,1);
% y = mean(S_C1_Layer5);
% SEM = std(S_C1_Layer5) / sqrt(N);                    % Standard Error Of The Mean
% CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
% errorbar(x, y, CI95,'LineWidth',3)
% grid off
% hold on;
% 
% N = size(S_C1_Layer6,1);
% y = mean(S_C1_Layer6);
% SEM = std(S_C1_Layer6) / sqrt(N);                    % Standard Error Of The Mean
% CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
% errorbar(x, y, CI95,'LineWidth',4)
% grid off
% hold on;
% title ('A cell in each layer at the 1st Column ')
%
subplot(3,1,2)
x = 1:17; 
N = size(S_C2_Layer2,1);
y = mean(S_C2_Layer2);
SEM = std(S_C2_Layer2) / sqrt(N);                    % Standard Error Of The Mean
CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
errorbar(x, y, CI95,'LineWidth',1)
grid off
hold on;

N = size(S_C2_Layer4,1);
y = mean(S_C2_Layer4);
SEM = std(S_C2_Layer4) / sqrt(N);                    % Standard Error Of The Mean
CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
errorbar(x, y, CI95,'LineWidth',2)
grid off
hold on;

N = size(S_C2_Layer5,1);
y = mean(S_C2_Layer5);
SEM = std(S_C2_Layer5) / sqrt(N);                    % Standard Error Of The Mean
CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
errorbar(x, y, CI95,'LineWidth',3)
grid off
hold on;

N = size(S_C2_Layer6,1);
y = mean(S_C2_Layer6);
SEM = std(S_C2_Layer6) / sqrt(N);                    % Standard Error Of The Mean
CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
errorbar(x, y, CI95,'LineWidth',4)
grid off
hold on;
title ('A cell in each layer at the 2nd Column ')

%
% subplot(3,1,3)
% x = 1:8; 
% N = size(S_C3_Layer2,1);
% y = mean(S_C3_Layer2);
% SEM = std(S_C3_Layer2) / sqrt(N);                    % Standard Error Of The Mean
% CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
% errorbar(x, y, CI95,'LineWidth',1)
% grid off
% hold on;
% 
% N = size(S_C3_Layer4,1);
% y = mean(S_C3_Layer4);
% SEM = std(S_C3_Layer4) / sqrt(N);                    % Standard Error Of The Mean
% CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
% errorbar(x, y, CI95,'LineWidth',2)
% grid off
% hold on;
% 
% N = size(S_C3_Layer5,1);
% y = mean(S_C3_Layer5);
% SEM = std(S_C3_Layer5) / sqrt(N);                    % Standard Error Of The Mean
% CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
% errorbar(x, y, CI95,'LineWidth',3)
% grid off
% hold on;

% N = size(S_C3_Layer6,1);
% y = mean(S_C3_Layer6);
% SEM = std(S_C3_Layer6) / sqrt(N);                    % Standard Error Of The Mean
% CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
% errorbar(x, y, CI95,'LineWidth',4)
% grid off
% hold on;
% title ('A cell in each layer at the 3rd Column ')
%% guassian fitting for a single cell
 S_C2_Layer4

xx=1:17;
figure;
N = size(S_C2_Layer4,1);
y = mean(S_C2_Layer4);
SEM = std(S_C2_Layer4) / sqrt(N);                    % Standard Error Of The Mean
CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
errorbar(xx, y, CI95,'LineWidth',3)
hold on
 
 %yy=S_C2_Layer4(1,:);
 yy=mean(S_C2_Layer4);
 f = fit(xx.',yy.','gauss1')
 plot(f,xx,yy)

%% 
 
xx=1:17;
  
 xxX=1:0.5:17;
 vq = interp1(S_C2_Layer4(1,:),xxX);
 figure
xx=1:length(vq)
  f = fit(xx.',vq.','gauss1')
 %plot(f,xx,yy)
plot(f,xx,vq)
