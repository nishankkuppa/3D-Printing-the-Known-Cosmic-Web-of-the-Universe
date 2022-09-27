%importLVPlotList
importLVGalaxyData

%{
FinalHourofRightAscension = LVPlotList{:,1};
FinalDegreeofDeclination = LVPlotList{:,2};
Distance = LVPlotList{:,3};
Xc = LVPlotList{:,4};
Yc = LVPlotList{:,5};
Zc = LVPlotList{:,6};
%}

FinalHourofRightAscension = LVGalaxyData{:,1};
FinalDegreeofDeclination = LVGalaxyData{:,2};
Distance = LVGalaxyData{:,3};
Xc = LVGalaxyData{:,4};
Yc = LVGalaxyData{:,5};
Zc = LVGalaxyData{:,6};

figure(1);
scatter3(FinalHourofRightAscension,FinalDegreeofDeclination,Distance,'.');
xlim([-inf inf]);
ylim([-inf inf]);
title('LV (Local Volume) Galaxy Data -- Raw Data');
xlabel('Final Hour of Right Ascension');
ylabel('Final Degree of Declination');
zlabel('Distance in megaparsecs');

figure(2);
scatter3(Xc,Yc,Zc,'.');
%xlim([-25 25]);
%ylim([-25 25]);
title('LV (Local Volume) Galaxy Data -- Cartesian Coordinates');
xlabel('x = z sin (90 - dec) cos (ra)');
ylabel('y = z sin (90 - dec) sin (ra)');
zlabel('z = z cos (90 - dec)');