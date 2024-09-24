clc
clear
% close all

%Neuron_IDs=480;
NN=8; % Number of Trials for each orientation

save NN.mat NN



for k=1:17  %Resolution 17

    load NN.mat
    Neurons = 510;
    
for i=1:NN 
   
Data=readtable(sprintf('spikesFT%d.csv',i)); %'spikes0T1.csv'); % Import .csv as a table

%
Time=table2array(Data(:,1)); % change table to mat 
NodeID=table2array(Data(:,3)); % change table to mat 
A(i).data=[Time NodeID]; % create a matrix of data


if k==1 
    R = Time(:,1)<1000;
    Ort=0;
elseif k==2
    R= 1000<Time(:,1) & Time(:,1)<2000;
    Ort=11;
elseif k==3 
    R= 2000<Time(:,1) & Time(:,1)<3000;
    Ort=22;
elseif k==4 
    R= 3000<Time(:,1) & Time(:,1)<4000;
    Ort=33;
elseif k==5 
    R= 4000<Time(:,1) & Time(:,1)<5000;
    Ort=45;
    
elseif k==6 
    R= 5000<Time(:,1) & Time(:,1)<6000;
    Ort=56;
    
elseif k==7 
    R= 6000<Time(:,1) & Time(:,1)<7000;
    Ort=67;
    
elseif k==8 
    R= 7000<Time(:,1) & Time(:,1)<8000;
    Ort=78;
    
 elseif k==9 
    R= 8000<Time(:,1) & Time(:,1)<9000;
    Ort=90;
    
 elseif k==10 
    R= 9000<Time(:,1) & Time(:,1)<10000;
    Ort=101;
elseif k==11 
    R= 10000<Time(:,1) & Time(:,1)<11000;
    Ort=112;
elseif k==12 
    R= 11000<Time(:,1) & Time(:,1)<12000;
    Ort=123;
elseif k==13 
    R= 12000<Time(:,1) & Time(:,1)<13000;
    Ort=135;
elseif k==14 
    R= 13000<Time(:,1) & Time(:,1)<14000;
    Ort=146;
elseif k==15 
    R= 14000<Time(:,1) & Time(:,1)<15000;
    Ort=157;
elseif k==16 
    R= 15000<Time(:,1) & Time(:,1)<16000;
    Ort=168;
    elseif k==17 
    R= 16000<Time(:,1) & Time(:,1)<17000;
    Ort=180;
   
end
        
  %

%R= 1500<Time(:,1) & Time(:,1)<2500

TR=Time(R,1);
NR=NodeID(R,1);

R0=[TR NR];

% for j=1:128
%     sum1(j)=length(find(NodeID(:,1)==j));
% end

for j=1:Neurons
    %sum2(j)=length(find(NodeID(:,1)==j));
        sum2(j)=length(find(NR(:,1)==j));

end


% for j=639:766
%     sum3(j)=length(find(NodeID(:,1)==j));
% end



save (sprintf('spikes%dT%d.mat',Ort,i)); 

end
%

clear;
end