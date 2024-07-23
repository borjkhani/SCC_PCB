clc
clear
close all

run Cell_IDs.m
%Cell_Number=254 ; %P3
%Cell_Number=266 ;
%Cell_Number=278 ;

global Cell_Number;
global H_C;
global H_Sst_Act_06P;
global H_Sst_Act_12P;
global H_Sst_Act_18P;
global H_Sst_Act_25P;
global H_Sst_Act_50P;
global H_Sst_Act_75P;
global H_Sst_Act_100P;

global H_Sst_DeAct_06P;
global H_Sst_DeAct_12P;
global H_Sst_DeAct_18P;
global H_Sst_DeAct_25P;
global H_Sst_DeAct_50P;
global H_Sst_DeAct_75P;
global H_Sst_DeAct_100P;


global skipNum;


H_C = zeros(510,1);
H_Sst_Act_06P = zeros(510,1);
H_Sst_Act_12P = zeros(510,1);
H_Sst_Act_18P = zeros(510,1);
H_Sst_Act_25P = zeros(510,1);
H_Sst_Act_50P = zeros(510,1);
H_Sst_Act_75P = zeros(510,1);
H_Sst_Act_100P = zeros(510,1);

H_Sst_DeAct_06P = zeros(510,1);
H_Sst_DeAct_12P = zeros(510,1);
H_Sst_DeAct_18P = zeros(510,1);
H_Sst_DeAct_25P = zeros(510,1);
H_Sst_DeAct_50P = zeros(510,1);
H_Sst_DeAct_75P = zeros(510,1);
H_Sst_DeAct_100P = zeros(510,1);

%Cell_Number=286 ;
%Cell_Number=311 ; % PYR L4 P2 90 degrees

%Cell_Number=335 ;
HWHH_C = zeros; %zeros(1,3);
HWHH_Sst_Act_06P = zeros; % zeros (1,3);
HWHH_Sst_Act_12P = zeros; % zeros (1,3);
HWHH_Sst_Act_18P = zeros; % zeros (1,3);
HWHH_Sst_Act_25P = zeros; % zeros (1,3);
HWHH_Sst_Act_50P = zeros;
HWHH_Sst_Act_75P = zeros;
HWHH_Sst_Act_100P = zeros;

HWHH_Sst_DeAct_06P = zeros; % zeros (1,3);
HWHH_Sst_DeAct_12P = zeros; % zeros (1,3);
HWHH_Sst_DeAct_18P = zeros; % zeros (1,3);
HWHH_Sst_DeAct_25P = zeros; % zeros (1,3);
HWHH_Sst_DeAct_50P = zeros;
HWHH_Sst_DeAct_75P = zeros;
HWHH_Sst_DeAct_100P = zeros;

% for i = 1:12951;
%    if ~ismember(i,skipNum) % if i is not a member of the skipNum array 
%        frame = i;
%        % further work your magic
%    end
% end

skipNum = []; %[24,506,Sst,Sst];
%
for Cell_Number = 1:510 %Ssts %1:510 % Number of Cells to be Analysed 
    if ~ismember(Cell_Number,skipNum) % if i is not a member of the skipNum array 
       
   Cell_Number
    
%Cell_Number=jj ;

%Cell_Number=350 ; %P1
%Cell_Number=362 ;
%Cell_Number=374 ;

%Cell_Number=32 ;
%Cell_Number=57 ;  % L6
%Cell_Number=81 ;      %  interesting

run Function_Fast.m %('C:\Users\Mehdi\Downloads\Model 8\Matlab Analysis Andrzej\Run_One_PYRs_Just_Sst.m')
%close all
clc

%%
% f_PYRs_C.a1=1
% f_PYRs_Sst_Act.a1=1

% figure
% plot(f_PYRs_C,'b')
% hold on;
% plot(f_PYRs_Sst_Act,'r')

%%
X=1:0.01:17;
     %Coefficients:
if nonzeros(BB_Control)      
A1 = f_PYRs_C.a1;  %        
B1 = f_PYRs_C.b1; %    5.54
C1 = f_PYRs_C.c1;  %   0.9677
else 
A1=0;
B1=0;
C1=0;
end
F_PYRs_C =  A1*exp(-((X-B1)/C1).^2);

 
% figure
%  plot(F_PYRs_C)
%  hold on;
 %%
if nonzeros(BB_Sst_Act_06P)
A1 = f_PYRs_Sst_Act_06P.a1;  %        
B1 = f_PYRs_Sst_Act_06P.b1; %    5.54
C1 = f_PYRs_Sst_Act_06P.c1;  %   0.9677
else 
A1=0;
B1=0;
C1=0;
end    
F_PYRs_Sst_Act_06P =  A1*exp(-((X-B1)/C1).^2);

if nonzeros(BB_Sst_Act_12P)
A1 = f_PYRs_Sst_Act_12P.a1;  %        
B1 = f_PYRs_Sst_Act_12P.b1; %    5.54
C1 = f_PYRs_Sst_Act_12P.c1;  %   0.9677
else 
A1=0;
B1=0;
C1=0;
end    
F_PYRs_Sst_Act_12P =  A1*exp(-((X-B1)/C1).^2);

if nonzeros(BB_Sst_Act_18P)
A1 = f_PYRs_Sst_Act_18P.a1;  %        
B1 = f_PYRs_Sst_Act_18P.b1; %    5.54
C1 = f_PYRs_Sst_Act_18P.c1;  %   0.9677
else 
A1=0;
B1=0;
C1=0;
end    
F_PYRs_Sst_Act_18P =  A1*exp(-((X-B1)/C1).^2);
 
if nonzeros(BB_Sst_Act_25P)
A1 = f_PYRs_Sst_Act_25P.a1;  %        
B1 = f_PYRs_Sst_Act_25P.b1; %    5.54
C1 = f_PYRs_Sst_Act_25P.c1;  %   0.9677
else 
A1=0;
B1=0;
C1=0;
end    
F_PYRs_Sst_Act_25P =  A1*exp(-((X-B1)/C1).^2);
 
if nonzeros(BB_Sst_Act_50P)
A1 = f_PYRs_Sst_Act_50P.a1;  %        
B1 = f_PYRs_Sst_Act_50P.b1; %    5.54
C1 = f_PYRs_Sst_Act_50P.c1;  %   0.9677
else 
A1=0;
B1=0;
C1=0;
end    
     
F_PYRs_Sst_Act_50P =  A1*exp(-((X-B1)/C1).^2);

if nonzeros(BB_Sst_Act_75P)
A1 = f_PYRs_Sst_Act_75P.a1;  %        
B1 = f_PYRs_Sst_Act_75P.b1; %    5.54
C1 = f_PYRs_Sst_Act_75P.c1;  %   0.9677
else 
A1=0;
B1=0;
C1=0;
end    
     
F_PYRs_Sst_Act_75P =  A1*exp(-((X-B1)/C1).^2);

if nonzeros(BB_Sst_Act_100P)
A1 = f_PYRs_Sst_Act_100P.a1;  %        
B1 = f_PYRs_Sst_Act_100P.b1; %    5.54
C1 = f_PYRs_Sst_Act_100P.c1;  %   0.9677
else 
A1=0;
B1=0;
C1=0;
end    
     
F_PYRs_Sst_Act_100P =  A1*exp(-((X-B1)/C1).^2);


 %%
if nonzeros(BB_Sst_DeAct_06P)
A1 = f_PYRs_Sst_DeAct_06P.a1;  %        
B1 = f_PYRs_Sst_DeAct_06P.b1; %    5.54
C1 = f_PYRs_Sst_DeAct_06P.c1;  %   0.9677
else 
A1=0;
B1=0;
C1=0;
end    
F_PYRs_Sst_DeAct_06P =  A1*exp(-((X-B1)/C1).^2);

if nonzeros(BB_Sst_DeAct_12P)
A1 = f_PYRs_Sst_DeAct_12P.a1;  %        
B1 = f_PYRs_Sst_DeAct_12P.b1; %    5.54
C1 = f_PYRs_Sst_DeAct_12P.c1;  %   0.9677
else 
A1=0;
B1=0;
C1=0;
end    
F_PYRs_Sst_DeAct_12P =  A1*exp(-((X-B1)/C1).^2);

if nonzeros(BB_Sst_DeAct_18P)
A1 = f_PYRs_Sst_DeAct_18P.a1;  %        
B1 = f_PYRs_Sst_DeAct_18P.b1; %    5.54
C1 = f_PYRs_Sst_DeAct_18P.c1;  %   0.9677
else 
A1=0;
B1=0;
C1=0;
end    
F_PYRs_Sst_DeAct_18P =  A1*exp(-((X-B1)/C1).^2);
 
if nonzeros(BB_Sst_DeAct_25P)
A1 = f_PYRs_Sst_DeAct_25P.a1;  %        
B1 = f_PYRs_Sst_DeAct_25P.b1; %    5.54
C1 = f_PYRs_Sst_DeAct_25P.c1;  %   0.9677
else 
A1=0;
B1=0;
C1=0;
end    
F_PYRs_Sst_DeAct_25P =  A1*exp(-((X-B1)/C1).^2);
 
if nonzeros(BB_Sst_DeAct_50P)
A1 = f_PYRs_Sst_DeAct_50P.a1;  %        
B1 = f_PYRs_Sst_DeAct_50P.b1; %    5.54
C1 = f_PYRs_Sst_DeAct_50P.c1;  %   0.9677
else 
A1=0;
B1=0;
C1=0;
end    
     
F_PYRs_Sst_DeAct_50P =  A1*exp(-((X-B1)/C1).^2);

if nonzeros(BB_Sst_DeAct_75P)
A1 = f_PYRs_Sst_DeAct_75P.a1;  %        
B1 = f_PYRs_Sst_DeAct_75P.b1; %    5.54
C1 = f_PYRs_Sst_DeAct_75P.c1;  %   0.9677
else 
A1=0;
B1=0;
C1=0;
end    
     
F_PYRs_Sst_DeAct_75P =  A1*exp(-((X-B1)/C1).^2);

if nonzeros(BB_Sst_DeAct_100P)
A1 = f_PYRs_Sst_DeAct_100P.a1;  %        
B1 = f_PYRs_Sst_DeAct_100P.b1; %    5.54
C1 = f_PYRs_Sst_DeAct_100P.c1;  %   0.9677
else 
A1=0;
B1=0;
C1=0;
end    
     
F_PYRs_Sst_DeAct_100P =  A1*exp(-((X-B1)/C1).^2);

%%
%X=1:0.01:9;
     %Coefficients:

A1 = f_PYRs_C.a1;  %        
B1 = f_PYRs_C.b1; %    5.54
C1 = f_PYRs_C.c1;  %   0.9677
F_PYRs_C =  A1*exp(-((X-B1)/C1).^2);
F_PYRs_C =  F_PYRs_C/max(F_PYRs_C);
Steps=11.25;
HWHH_C= Steps*sqrt(log(2)) * C1;
H_C(Cell_Number,1) = HWHH_C;
Gof_PYRs_C(Cell_Number,1) = gof_PYRs_C;


A1 = f_PYRs_Sst_Act_06P.a1;  %        
B1 = f_PYRs_Sst_Act_06P.b1; %    5.54
C1 = f_PYRs_Sst_Act_06P.c1;  %   0.9677
%f_PYRs_Sst_Act(x) =  a1*exp(-((x-b1)/c1)^2)
F_PYRs_Sst_Act_06P =  A1*exp(-((X-B1)/C1).^2);
F_PYRs_Sst_Act_06P = F_PYRs_Sst_Act_06P/max(F_PYRs_Sst_Act_06P);
Steps=11.06;
HWHH_Sst_Act_06P= Steps*sqrt(log(2)) * C1;
H_Sst_Act_06P(Cell_Number,1) = HWHH_Sst_Act_06P;
Gof_PYRs_Sst_Act_06P(Cell_Number,1) = gof_PYRs_Sst_Act_06P;

A1 = f_PYRs_Sst_Act_12P.a1;  %        
B1 = f_PYRs_Sst_Act_12P.b1; %    5.54
C1 = f_PYRs_Sst_Act_12P.c1;  %   0.9677
%f_PYRs_Sst_Act(x) =  a1*exp(-((x-b1)/c1)^2)
F_PYRs_Sst_Act_12P =  A1*exp(-((X-B1)/C1).^2);
F_PYRs_Sst_Act_12P = F_PYRs_Sst_Act_12P/max(F_PYRs_Sst_Act_12P);
Steps=11.12;
HWHH_Sst_Act_12P= Steps*sqrt(log(2)) * C1;
H_Sst_Act_12P(Cell_Number,1) = HWHH_Sst_Act_12P;
Gof_PYRs_Sst_Act_12P(Cell_Number,1) = gof_PYRs_Sst_Act_12P;

A1 = f_PYRs_Sst_Act_18P.a1;  %        
B1 = f_PYRs_Sst_Act_18P.b1; %    5.54
C1 = f_PYRs_Sst_Act_18P.c1;  %   0.9677
%f_PYRs_Sst_Act(x) =  a1*exp(-((x-b1)/c1)^2)
F_PYRs_Sst_Act_18P =  A1*exp(-((X-B1)/C1).^2);
F_PYRs_Sst_Act_18P = F_PYRs_Sst_Act_18P/max(F_PYRs_Sst_Act_18P);
Steps=11.18;
HWHH_Sst_Act_18P= Steps*sqrt(log(2)) * C1;
H_Sst_Act_18P(Cell_Number,1) = HWHH_Sst_Act_18P;
Gof_PYRs_Sst_Act_18P(Cell_Number,1) = gof_PYRs_Sst_Act_18P;



% figure
% plot(F_PYRs_C)
% hold on;
 %
A1 = f_PYRs_Sst_Act_25P.a1;  %        
B1 = f_PYRs_Sst_Act_25P.b1; %    5.54
C1 = f_PYRs_Sst_Act_25P.c1;  %   0.9677
%f_PYRs_Sst_Act(x) =  a1*exp(-((x-b1)/c1)^2)
F_PYRs_Sst_Act_25P =  A1*exp(-((X-B1)/C1).^2);
F_PYRs_Sst_Act_25P = F_PYRs_Sst_Act_25P/max(F_PYRs_Sst_Act_25P);
Steps=11.25;
HWHH_Sst_Act_25P= Steps*sqrt(log(2)) * C1;
H_Sst_Act_25P(Cell_Number,1) = HWHH_Sst_Act_25P;
Gof_PYRs_Sst_Act_25P(Cell_Number,1) = gof_PYRs_Sst_Act_25P;


A1 = f_PYRs_Sst_Act_50P.a1;  %        
B1 = f_PYRs_Sst_Act_50P.b1; %    5.54
C1 = f_PYRs_Sst_Act_50P.c1;  %   0.9677
%f_PYRs_Sst_Act(x) =  a1*exp(-((x-b1)/c1)^2)
F_PYRs_Sst_Act_50P =  A1*exp(-((X-B1)/C1).^2);
F_PYRs_Sst_Act_50P = F_PYRs_Sst_Act_50P/max(F_PYRs_Sst_Act_50P);
Steps=11.25;
HWHH_Sst_Act_50P= Steps*sqrt(log(2)) * C1;
H_Sst_Act_50P(Cell_Number,1) = HWHH_Sst_Act_50P;
Gof_PYRs_Sst_Act_50P(Cell_Number,1) = gof_PYRs_Sst_Act_50P;


A1 = f_PYRs_Sst_Act_75P.a1;  %        
B1 = f_PYRs_Sst_Act_75P.b1; %    5.54
C1 = f_PYRs_Sst_Act_75P.c1;  %   0.9677
%f_PYRs_Sst_Act(x) =  a1*exp(-((x-b1)/c1)^2)
F_PYRs_Sst_Act_75P =  A1*exp(-((X-B1)/C1).^2);
F_PYRs_Sst_Act_75P = F_PYRs_Sst_Act_75P/max(F_PYRs_Sst_Act_75P);
Steps=11.25;
HWHH_Sst_Act_75P= Steps*sqrt(log(2)) * C1;
H_Sst_Act_75P(Cell_Number,1) = HWHH_Sst_Act_75P;
Gof_PYRs_Sst_Act_75P(Cell_Number,1) = gof_PYRs_Sst_Act_75P;

A1 = f_PYRs_Sst_Act_100P.a1;  %        
B1 = f_PYRs_Sst_Act_100P.b1; %    5.54
C1 = f_PYRs_Sst_Act_100P.c1;  %   0.9677
%f_PYRs_Sst_Act(x) =  a1*exp(-((x-b1)/c1)^2)
F_PYRs_Sst_Act_100P =  A1*exp(-((X-B1)/C1).^2);
F_PYRs_Sst_Act_100P = F_PYRs_Sst_Act_100P/max(F_PYRs_Sst_Act_100P);
Steps=11.25;
HWHH_Sst_Act_100P= Steps*sqrt(log(2)) * C1;
H_Sst_Act_100P(Cell_Number,1) = HWHH_Sst_Act_100P;
Gof_PYRs_Sst_Act_100P(Cell_Number,1) = gof_PYRs_Sst_Act_100P;
%%
A1 = f_PYRs_Sst_DeAct_06P.a1;  %        
B1 = f_PYRs_Sst_DeAct_06P.b1; %    5.54
C1 = f_PYRs_Sst_DeAct_06P.c1;  %   0.9677
%f_PYRs_Sst_DeAct(x) =  a1*exp(-((x-b1)/c1)^2)
F_PYRs_Sst_DeAct_06P =  A1*exp(-((X-B1)/C1).^2);
F_PYRs_Sst_DeAct_06P = F_PYRs_Sst_DeAct_06P/max(F_PYRs_Sst_DeAct_06P);
Steps=11.06;
HWHH_Sst_DeAct_06P= Steps*sqrt(log(2)) * C1;
H_Sst_DeAct_06P(Cell_Number,1) = HWHH_Sst_DeAct_06P;
Gof_PYRs_Sst_DeAct_06P(Cell_Number,1) = gof_PYRs_Sst_DeAct_06P;

A1 = f_PYRs_Sst_DeAct_12P.a1;  %        
B1 = f_PYRs_Sst_DeAct_12P.b1; %    5.54
C1 = f_PYRs_Sst_DeAct_12P.c1;  %   0.9677
%f_PYRs_Sst_DeAct(x) =  a1*exp(-((x-b1)/c1)^2)
F_PYRs_Sst_DeAct_12P =  A1*exp(-((X-B1)/C1).^2);
F_PYRs_Sst_DeAct_12P = F_PYRs_Sst_DeAct_12P/max(F_PYRs_Sst_DeAct_12P);
Steps=11.12;
HWHH_Sst_DeAct_12P= Steps*sqrt(log(2)) * C1;
H_Sst_DeAct_12P(Cell_Number,1) = HWHH_Sst_DeAct_12P;
Gof_PYRs_Sst_DeAct_12P(Cell_Number,1) = gof_PYRs_Sst_DeAct_12P;

A1 = f_PYRs_Sst_DeAct_18P.a1;  %        
B1 = f_PYRs_Sst_DeAct_18P.b1; %    5.54
C1 = f_PYRs_Sst_DeAct_18P.c1;  %   0.9677
%f_PYRs_Sst_DeAct(x) =  a1*exp(-((x-b1)/c1)^2)
F_PYRs_Sst_DeAct_18P =  A1*exp(-((X-B1)/C1).^2);
F_PYRs_Sst_DeAct_18P = F_PYRs_Sst_DeAct_18P/max(F_PYRs_Sst_DeAct_18P);
Steps=11.18;
HWHH_Sst_DeAct_18P= Steps*sqrt(log(2)) * C1;
H_Sst_DeAct_18P(Cell_Number,1) = HWHH_Sst_DeAct_18P;
Gof_PYRs_Sst_DeAct_18P(Cell_Number,1) = gof_PYRs_Sst_DeAct_18P;



% figure
% plot(F_PYRs_C)
% hold on;
 %
A1 = f_PYRs_Sst_DeAct_25P.a1;  %        
B1 = f_PYRs_Sst_DeAct_25P.b1; %    5.54
C1 = f_PYRs_Sst_DeAct_25P.c1;  %   0.9677
%f_PYRs_Sst_DeAct(x) =  a1*exp(-((x-b1)/c1)^2)
F_PYRs_Sst_DeAct_25P =  A1*exp(-((X-B1)/C1).^2);
F_PYRs_Sst_DeAct_25P = F_PYRs_Sst_DeAct_25P/max(F_PYRs_Sst_DeAct_25P);
Steps=11.25;
HWHH_Sst_DeAct_25P= Steps*sqrt(log(2)) * C1;
H_Sst_DeAct_25P(Cell_Number,1) = HWHH_Sst_DeAct_25P;
Gof_PYRs_Sst_DeAct_25P(Cell_Number,1) = gof_PYRs_Sst_DeAct_25P;


A1 = f_PYRs_Sst_DeAct_50P.a1;  %        
B1 = f_PYRs_Sst_DeAct_50P.b1; %    5.54
C1 = f_PYRs_Sst_DeAct_50P.c1;  %   0.9677
%f_PYRs_Sst_DeAct(x) =  a1*exp(-((x-b1)/c1)^2)
F_PYRs_Sst_DeAct_50P =  A1*exp(-((X-B1)/C1).^2);
F_PYRs_Sst_DeAct_50P = F_PYRs_Sst_DeAct_50P/max(F_PYRs_Sst_DeAct_50P);
Steps=11.25;
HWHH_Sst_DeAct_50P= Steps*sqrt(log(2)) * C1;
H_Sst_DeAct_50P(Cell_Number,1) = HWHH_Sst_DeAct_50P;
Gof_PYRs_Sst_DeAct_50P(Cell_Number,1) = gof_PYRs_Sst_DeAct_50P;


A1 = f_PYRs_Sst_DeAct_75P.a1;  %        
B1 = f_PYRs_Sst_DeAct_75P.b1; %    5.54
C1 = f_PYRs_Sst_DeAct_75P.c1;  %   0.9677
%f_PYRs_Sst_DeAct(x) =  a1*exp(-((x-b1)/c1)^2)
F_PYRs_Sst_DeAct_75P =  A1*exp(-((X-B1)/C1).^2);
F_PYRs_Sst_DeAct_75P = F_PYRs_Sst_DeAct_75P/max(F_PYRs_Sst_DeAct_75P);
Steps=11.25;
HWHH_Sst_DeAct_75P= Steps*sqrt(log(2)) * C1;
H_Sst_DeAct_75P(Cell_Number,1) = HWHH_Sst_DeAct_75P;
Gof_PYRs_Sst_DeAct_75P(Cell_Number,1) = gof_PYRs_Sst_DeAct_75P;

A1 = f_PYRs_Sst_DeAct_100P.a1;  %        
B1 = f_PYRs_Sst_DeAct_100P.b1; %    5.54
C1 = f_PYRs_Sst_DeAct_100P.c1;  %   0.9677
%f_PYRs_Sst_DeAct(x) =  a1*exp(-((x-b1)/c1)^2)
F_PYRs_Sst_DeAct_100P =  A1*exp(-((X-B1)/C1).^2);
F_PYRs_Sst_DeAct_100P = F_PYRs_Sst_DeAct_100P/max(F_PYRs_Sst_DeAct_100P);
Steps=11.25;
HWHH_Sst_DeAct_100P= Steps*sqrt(log(2)) * C1;
H_Sst_DeAct_100P(Cell_Number,1) = HWHH_Sst_DeAct_100P;
Gof_PYRs_Sst_DeAct_100P(Cell_Number,1) = gof_PYRs_Sst_DeAct_100P;

%% New Plots 3
% FA=figure;
% P1=plot(F_PYRs_C); hold on;
% P2=plot(F_PYRs_Sst_Act_100P); hold on;
% P3=plot(F_PYRs_Sst_DeAct); hold on;

% P1(1).LineWidth = 4;
% P2(1).LineWidth = 4;
% P3(1).LineWidth = 4;
% P4(1).LineWidth = 4;
% P5(1).LineWidth = 4;
% P6(1).LineWidth = 4;
% 
% P1(1).Color= [0.00,0.45,0.74]; % [0.00,0.45,0.74]
% P2(1).Color= [0.85,0.33,0.10]; %'g' %0.85,0.33,0.10
% P3(1).Color= [0.93,0.69,0.13]; %'y' %0.93,0.69,0.13
% P4(1).Color= [0.49,0.18,0.56] %'c' %0.49,0.18,0.56
% P5(1).Color= [0.47,0.67,0.19] %'m' %0.47,0.67,0.19
% P6(1).Color= [0.30,0.75,0.93] %'m' %0.47,0.67,0.19
%P7(1).Color= [0.64,0.08,0.18] %'m' %0.47,0.67,0.19

% a = get(gca,'XTickLabel');  
% set(gca,'XTickLabel',a,'fontsize',22,'FontWeight','bold')
% 
% xticks       ([ 1    400  800   1200  1600 ])
% xticklabels  ([ 0;  45;  90;   135;  180])
% 
% xlabel('Orientations ({\circ})' )
% ylabel('Norm. Firing rates (HZ)')
% box off
% axis tight;
% %legend ('Control', '', 'Sst_A_c_t_1_0_0_%', '', 'Sst_D_e_A_c_t', '')
% legend ('Control', 'Sst_A_c_t_1_0_0_%', 'Sst_D_e_A_c_t', '')

if find(Cell_Number==PVs)
     Ce='PV';
    elseif  find(Cell_Number==Sst)
         Ce='Sst';
            elseif  find(Cell_Number==VIP)
                Ce='VIP';
                    elseif find(Cell_Number==PYRs)
                        Ce='PYRs';
end

% title ([Ce, '  Cell ID: ', num2str(Cell_Number)])
% ylim([-0.02 1.02])
% set(gcf, 'Units', 'Inches', 'Position', [0, 0, 5.83, 4.38], 'PaperUnits', 'Inches', 'PaperSize', [7.25, 9.125])
% 
%  
% set(1,'renderer','painters')
% saveas(FA,sprintf('Z_%s %d N.tif',Ce, Cell_Number));
% saveas(FA,sprintf('Z_%s %d N.fig',Ce, Cell_Number));
% saveas(FA,sprintf('Z_%s %d N.eps',Ce, Cell_Number),'psc2');

%% New Plots All
% FA_All=figure;
% P1=plot(F_PYRs_C); hold on;
% P2=plot(F_PYRs_Sst_Act_25P); hold on;
% P3=plot(F_PYRs_Sst_Act_50P); hold on;
% P4=plot(F_PYRs_Sst_Act_75P); hold on;
% P5=plot(F_PYRs_Sst_Act_100P); hold on;
% P6=plot(F_PYRs_Sst_DeAct); hold on;
% 
% P1(1).LineWidth = 4;
% P2(1).LineWidth = 4;
% P3(1).LineWidth = 4;
% P4(1).LineWidth = 4;
% P5(1).LineWidth = 4;
% P6(1).LineWidth = 4;
% 
% P1(1).Color= [0.00,0.45,0.74]; % [0.00,0.45,0.74]
% P2(1).Color= [0.85,0.33,0.10]; %'g' %0.85,0.33,0.10
% P3(1).Color= [0.93,0.69,0.13]; %'y' %0.93,0.69,0.13
% P4(1).Color= [0.49,0.18,0.56] %'c' %0.49,0.18,0.56
% P5(1).Color= [0.47,0.67,0.19] %'m' %0.47,0.67,0.19
% P6(1).Color= [0.30,0.75,0.93] %'m' %0.47,0.67,0.19
%P7(1).Color= [0.64,0.08,0.18] %'m' %0.47,0.67,0.19

% a = get(gca,'XTickLabel');  
% set(gca,'XTickLabel',a,'fontsize',22,'FontWeight','bold')
% 
% xticks       ([ 1    400  800   1200  1600 ])
% xticklabels  ([ 0;  45;  90;   135;  180])
% 
% xlabel('Orientations ({\circ})' )
% ylabel('Norm. Firing rates (HZ)')
% box off
% axis tight;
%legend ('Control', '', 'Sst_A_c_t_1_0_0_%', '', 'Sst_D_e_A_c_t', '')
% legend ('Control', 'Sst_A_c_t_2_5_%', 'Sst_A_c_t_5_0_%', 'Sst_A_c_t_7_5_%', 'Sst_A_c_t_1_0_0_%', 'Sst_D_e_A_c_t', '')

if find(Cell_Number==PVs)
     Ce='PV';
    elseif  find(Cell_Number==Sst)
         Ce='Sst';
            elseif  find(Cell_Number==VIP)
                Ce='VIP';
                    elseif find(Cell_Number==PYRs)
                        Ce='PYRs';
end

% title ([Ce, '  Cell ID: ', num2str(Cell_Number)])
% ylim([-0.02 1.02])
% set(gcf, 'Units', 'Inches', 'Position', [0, 0, 5.83, 4.38], 'PaperUnits', 'Inches', 'PaperSize', [7.25, 9.125])
% 
% 
%  
% set(1,'renderer','painters')
% saveas(FA_All,sprintf('Z_%s %d All N.tif',Ce,Cell_Number));
% saveas(FA_All,sprintf('Z_%s %d All N.fig',Ce,Cell_Number));
% saveas(FA_All,sprintf('Z_%s %d All N.eps',Ce,Cell_Number),'psc2');

end
end  
save HWHH_Results_Sst.mat H_C  H_Sst_Act_06P H_Sst_Act_12P H_Sst_Act_18P H_Sst_Act_25P H_Sst_Act_50P H_Sst_Act_75P H_Sst_Act_100P H_Sst_DeAct_06P H_Sst_DeAct_12P H_Sst_DeAct_18P H_Sst_DeAct_25P H_Sst_DeAct_50P H_Sst_DeAct_75P H_Sst_DeAct_100P
save Gof_Sst_Act_DeAct.mat  Gof_PYRs_C  Gof_PYRs_Sst_Act_06P  Gof_PYRs_Sst_Act_12P  Gof_PYRs_Sst_Act_18P Gof_PYRs_Sst_Act_25P Gof_PYRs_Sst_Act_50P Gof_PYRs_Sst_Act_75P Gof_PYRs_Sst_Act_100P  Gof_PYRs_Sst_DeAct_06P  Gof_PYRs_Sst_DeAct_12P  Gof_PYRs_Sst_DeAct_18P Gof_PYRs_Sst_DeAct_25P Gof_PYRs_Sst_DeAct_50P Gof_PYRs_Sst_DeAct_75P Gof_PYRs_Sst_DeAct_100P 