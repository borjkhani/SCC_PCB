clc;
clear;

%load('HWHH_PV_Act_DeAct.mat')
load('HWHH_PV_Act.mat')
run Cell_IDs.m
%%
% N=PYRs
% H_C(N,1)
% H_PV_Act_100P(N,1)
% H_PV_DeAct_100P(N,1)

%%
N=PYRs;
M_C=mean(H_C(N,1))
SEM_C=std(H_C(N,1))

H_PV_Act_100P(H_PV_Act_100P>50)=0;
H_PV_Act_100P(H_PV_DeAct_100P>50)=0;

M_Act=mean(H_PV_Act_100P(N,1))
SEM_Act=std(H_PV_Act_100P(N,1))

M_Act=mean(H_PV_DeAct_100P(N,1))
SEM_Act=std(H_PV_DeAct_100P(N,1))
%%
clc
N=VIP;

H_C(H_C>40)=0;
H_PV_Act_100P(H_PV_Act_100P>50)=0;
H_PV_Act_100P(H_PV_DeAct_100P>50)=0;

M_C=mean(H_C(N,1))
SEM_C=std(H_C(N,1))

M_Act=mean(H_PV_Act_100P(N,1))
SEM_Act=std(H_PV_Act_100P(N,1))

M_Act=mean(H_PV_DeAct_100P(N,1))
SEM_Act=std(H_PV_DeAct_100P(N,1))
