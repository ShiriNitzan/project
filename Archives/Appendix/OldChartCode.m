ScenariosNames = {'Growth in Population', 'Electricity Saving Scenario', 'Increase in Diselinated Water', 'Reducing Beef Consumption', '5', 'Change In Energy Consumption From Renewable Energies', 'Electricity Production by Natural Gas','Electricity Saving', 'Waste Minimization','Recycle Waste', '11', '12', 'Transition To Public Transportation', 'Transition to Electric Car', 'Transition to Electric Van', 'Transition to Electric Truck', 'Transition to Electric Bus','18', 'Water Saving'};
AllButOneS2nox = SensitivityAnalysisTableAllButOneS2{:,2}';
AllButOneS3nox = SensitivityAnalysisTableAllButOneS3{:,2}';
 mask = AllButOneS2nox == 0 & AllButOneS3nox == 0;
    AllButOneS2nox(mask) = [];
    AllButOneS3nox(mask) = []; 
    ScenariosNames(mask) = [];

x = categorical(ScenariosNames);
y = [AllButOneS3nox; AllButOneS2nox];
b = bar(x, y, 0.4);
title('Sensitivity Analysis All But One S2 vs. S3',  'FontSize', 24);
xlabel('Scenarios', 'FontSize', 18) ;
ylabel('NOX (tons)', 'FontSize', 18);
legend({'S3','S2'},'Location','southwest');
xtips1 = b(1).XEndPoints;
ytips1 = b(1).YEndPoints;
labels1 = string(round(b(1).YData/(10^4),3));
text(xtips1,ytips1,labels1,'HorizontalAlignment','right','VerticalAlignment','bottom');
xtips2 = b(2).XEndPoints;
ytips2 = b(2).YEndPoints;
labels2 = string(round(b(2).YData/(10^4),3));
text(xtips2,ytips2,labels2,'HorizontalAlignment','left','VerticalAlignment','bottom');