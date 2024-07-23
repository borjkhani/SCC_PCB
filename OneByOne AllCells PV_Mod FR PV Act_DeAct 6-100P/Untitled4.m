F_PYRs_PV_DeAct_100P_R =  A1*exp(-((X-B1)/C1).^2);

pks = findpeaks(F_PYRs_PV_DeAct_75P_R);
PKS_PV_DeAct_75P(Cell_Number,1) = pks;

pks = findpeaks(F_PYRs_PV_Act_25P_R);
if ~isnan(pks)
PKS_PV_Act_25P(Cell_Number,1) = pks;
else
    PKS_PV_Act_25P(Cell_Number,1) = NaN;
end