%% HAdi Main
% clc
% clearvars -except Neurons
% close all
% 
% Data=readtable('spikes0T1.csv'); % Import .csv as a table
% Time=table2array(Data(:,1)); % change table to mat 
% NodeID=table2array(Data(:,3)); % change table to mat 
% A=[Time NodeID]; % create a matrix of data

%

%%

clc
clearvars -except Neurons
close all

%Neuron_IDs=480;
NN=8; % Number of Trials for each orientation
Neurons = 510;
save NN.mat NN

load NN.mat

for i=1:NN 
   
Data=readtable(sprintf('spikesFT%d.csv',i)); %'spikes0T1.csv'); % Import .csv as a table

%
Time=table2array(Data(:,1)); % change table to mat 
NodeID=table2array(Data(:,3)); % change table to mat 
A0(i).data=[Time NodeID]; % create a matrix of data

R=Time(:,1)<1000;
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

save (sprintf('spikes0T%d.mat',i)); 

end
%

clearvars -except Neurons;
%%
load NN.mat
for i=1:NN 
   
Data=readtable(sprintf('spikesFT%d.csv',i)); %'spikes0T1.csv'); % Import .csv as a table

%
Time=table2array(Data(:,1)); % change table to mat 
NodeID=table2array(Data(:,3)); % change table to mat 
A11(i).data=[Time NodeID]; % create a matrix of data

R= 1000<Time(:,1) & Time(:,1)<2000;
%R=(1500<Time(:,1)<2500);
TR=Time(R,1);
NR=NodeID(R,1);

R11=[TR NR];

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

save (sprintf('spikes11T%d.mat',i)); 

end
%

clearvars -except Neurons;
%%
load NN.mat
for i=1:NN 
   
Data=readtable(sprintf('spikesFT%d.csv',i)); %'spikes0T1.csv'); % Import .csv as a table

%
Time=table2array(Data(:,1)); % change table to mat 
NodeID=table2array(Data(:,3)); % change table to mat 
A22(i).data=[Time NodeID]; % create a matrix of data

R= 2000<Time(:,1) & Time(:,1)<3000;
%R=(1500<Time(:,1)<2500);
TR=Time(R,1);
NR=NodeID(R,1);

R22=[TR NR];

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

save (sprintf('spikes22T%d.mat',i)); 

end
%

clearvars -except Neurons;
%%
load NN.mat
for i=1:NN 
   
Data=readtable(sprintf('spikesFT%d.csv',i)); %'spikes0T1.csv'); % Import .csv as a table

%
Time=table2array(Data(:,1)); % change table to mat 
NodeID=table2array(Data(:,3)); % change table to mat 
A33(i).data=[Time NodeID]; % create a matrix of data

R= 3000<Time(:,1) & Time(:,1)<4000;
%R=(1500<Time(:,1)<2500);
TR=Time(R,1);
NR=NodeID(R,1);

R33=[TR NR];

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

save (sprintf('spikes33T%d.mat',i)); 

end
%

clearvars -except Neurons;
%%
load NN.mat
for i=1:NN 
   
Data=readtable(sprintf('spikesFT%d.csv',i)); %'spikes0T1.csv'); % Import .csv as a table

%
Time=table2array(Data(:,1)); % change table to mat 
NodeID=table2array(Data(:,3)); % change table to mat 
A45(i).data=[Time NodeID]; % create a matrix of data

R= 4000<Time(:,1) & Time(:,1)<5000;
%R=(1500<Time(:,1)<2500);
TR=Time(R,1);
NR=NodeID(R,1);

R45=[TR NR];

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

save (sprintf('spikes45T%d.mat',i)); 

end
%
clearvars -except Neurons;
%%
load NN.mat
for i=1:NN 
   
Data=readtable(sprintf('spikesFT%d.csv',i)); %'spikes0T1.csv'); % Import .csv as a table

%
Time=table2array(Data(:,1)); % change table to mat 
NodeID=table2array(Data(:,3)); % change table to mat 
A56(i).data=[Time NodeID]; % create a matrix of data

R= 5000<Time(:,1) & Time(:,1)<6000;
%R=(1500<Time(:,1)<2500);
TR=Time(R,1);
NR=NodeID(R,1);

R56=[TR NR];

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

save (sprintf('spikes56T%d.mat',i)); 

end
%
clearvars -except Neurons;
%%
load NN.mat
for i=1:NN 
Data=readtable(sprintf('spikesFT%d.csv',i)); %'spikes0T1.csv'); % Import .csv as a table
%
Time=table2array(Data(:,1)); % change table to mat 
NodeID=table2array(Data(:,3)); % change table to mat 
A67(i).data=[Time NodeID]; % create a matrix of data

R= 6000<Time(:,1) & Time(:,1)<7000;
%R=(1500<Time(:,1)<2500);
TR=Time(R,1);
NR=NodeID(R,1);
R67=[TR NR];
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
save (sprintf('spikes67T%d.mat',i)); 
end
%
clearvars -except Neurons;
%%
load NN.mat
for i=1:NN 
Data=readtable(sprintf('spikesFT%d.csv',i)); %'spikes0T1.csv'); % Import .csv as a table
%
Time=table2array(Data(:,1)); % change table to mat 
NodeID=table2array(Data(:,3)); % change table to mat 
A78(i).data=[Time NodeID]; % create a matrix of data

R= 7000<Time(:,1) & Time(:,1)<8000;
%R=(1500<Time(:,1)<2500);
TR=Time(R,1);
NR=NodeID(R,1);
R78=[TR NR];
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
save (sprintf('spikes78T%d.mat',i)); 
end
%
clearvars -except Neurons;
%%
load NN.mat
for i=1:NN 
Data=readtable(sprintf('spikesFT%d.csv',i)); %'spikes0T1.csv'); % Import .csv as a table
%
Time=table2array(Data(:,1)); % change table to mat 
NodeID=table2array(Data(:,3)); % change table to mat 
A90(i).data=[Time NodeID]; % create a matrix of data

R= 8000<Time(:,1) & Time(:,1)<9000;
%R=(1500<Time(:,1)<2500);
TR=Time(R,1);
NR=NodeID(R,1);
R90=[TR NR];
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
save (sprintf('spikes90T%d.mat',i)); 
end
%
clearvars -except Neurons;
%%
load NN.mat
for i=1:NN 
Data=readtable(sprintf('spikesFT%d.csv',i)); %'spikes0T1.csv'); % Import .csv as a table
%
Time=table2array(Data(:,1)); % change table to mat 
NodeID=table2array(Data(:,3)); % change table to mat 
A101(i).data=[Time NodeID]; % create a matrix of data

R= 9000<Time(:,1) & Time(:,1)<10000;
%R=(1500<Time(:,1)<2500);
TR=Time(R,1);
NR=NodeID(R,1);
R101=[TR NR];
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
save (sprintf('spikes101T%d.mat',i)); 
end
%
clearvars -except Neurons;
%%
load NN.mat
for i=1:NN 
Data=readtable(sprintf('spikesFT%d.csv',i)); %'spikes0T1.csv'); % Import .csv as a table
%
Time=table2array(Data(:,1)); % change table to mat 
NodeID=table2array(Data(:,3)); % change table to mat 
A112(i).data=[Time NodeID]; % create a matrix of data

R= 10000<Time(:,1) & Time(:,1)<11000;
%R=(1500<Time(:,1)<2500);
TR=Time(R,1);
NR=NodeID(R,1);
R101=[TR NR];
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
save (sprintf('spikes112T%d.mat',i)); 
end
%
clearvars -except Neurons;
%%
load NN.mat
for i=1:NN 
Data=readtable(sprintf('spikesFT%d.csv',i)); %'spikes0T1.csv'); % Import .csv as a table
%
Time=table2array(Data(:,1)); % change table to mat 
NodeID=table2array(Data(:,3)); % change table to mat 
A123(i).data=[Time NodeID]; % create a matrix of data

R= 11000<Time(:,1) & Time(:,1)<12000;
%R=(1500<Time(:,1)<2500);
TR=Time(R,1);
NR=NodeID(R,1);
R123=[TR NR];
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
save (sprintf('spikes123T%d.mat',i)); 
end
%%
load NN.mat
for i=1:NN 
Data=readtable(sprintf('spikesFT%d.csv',i)); %'spikes0T1.csv'); % Import .csv as a table
%
Time=table2array(Data(:,1)); % change table to mat 
NodeID=table2array(Data(:,3)); % change table to mat 
A135(i).data=[Time NodeID]; % create a matrix of data

R= 12000<Time(:,1) & Time(:,1)<13000;
%R=(1500<Time(:,1)<2500);
TR=Time(R,1);
NR=NodeID(R,1);
R135=[TR NR];
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
save (sprintf('spikes135T%d.mat',i)); 
end
%
%%
load NN.mat
for i=1:NN 
Data=readtable(sprintf('spikesFT%d.csv',i)); %'spikes0T1.csv'); % Import .csv as a table
%
Time=table2array(Data(:,1)); % change table to mat 
NodeID=table2array(Data(:,3)); % change table to mat 
A146(i).data=[Time NodeID]; % create a matrix of data

R= 13000<Time(:,1) & Time(:,1)<14000;
%R=(1500<Time(:,1)<2500);
TR=Time(R,1);
NR=NodeID(R,1);
R146=[TR NR];
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
save (sprintf('spikes146T%d.mat',i)); 
end
%%
load NN.mat
for i=1:NN 
Data=readtable(sprintf('spikesFT%d.csv',i)); %'spikes0T1.csv'); % Import .csv as a table
%
Time=table2array(Data(:,1)); % change table to mat 
NodeID=table2array(Data(:,3)); % change table to mat 
A157(i).data=[Time NodeID]; % create a matrix of data

R= 14000<Time(:,1) & Time(:,1)<15000;
%R=(1500<Time(:,1)<2500);
TR=Time(R,1);
NR=NodeID(R,1);
R157=[TR NR];
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
save (sprintf('spikes157T%d.mat',i)); 
end
%%
load NN.mat
for i=1:NN 
Data=readtable(sprintf('spikesFT%d.csv',i)); %'spikes0T1.csv'); % Import .csv as a table
%
Time=table2array(Data(:,1)); % change table to mat 
NodeID=table2array(Data(:,3)); % change table to mat 
A168(i).data=[Time NodeID]; % create a matrix of data

R= 15000<Time(:,1) & Time(:,1)<16000;
%R=(1500<Time(:,1)<2500);
TR=Time(R,1);
NR=NodeID(R,1);
R168=[TR NR];
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
save (sprintf('spikes168T%d.mat',i)); 
end
%%
load NN.mat
for i=1:NN 
Data=readtable(sprintf('spikesFT%d.csv',i)); %'spikes0T1.csv'); % Import .csv as a table
%
Time=table2array(Data(:,1)); % change table to mat 
NodeID=table2array(Data(:,3)); % change table to mat 
A180(i).data=[Time NodeID]; % create a matrix of data

R= 16000<Time(:,1) & Time(:,1)<17000;
%R=(1500<Time(:,1)<2500);
TR=Time(R,1);
NR=NodeID(R,1);
R180=[TR NR];
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
save (sprintf('spikes180T%d.mat',i)); 
end