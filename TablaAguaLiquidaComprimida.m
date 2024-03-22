function y = TablaAguaLiquidaComprimida(P)
%P = 5500;
%__________________________________________________%

TP1 = [263.94 0.0012862 1148.1 1154.5 2.9207;
0 0.0009977 0.04 5.03 0.0001; 
20 0.0009996 83.61 88.61 0.2954; 
40 0.0010057 166.92 171.95 0.5705; 
60 0.0010149 250.29 255.36 0.8287; 
80 0.0010267 333.82 338.96 1.0723; 
100 0.0010410 417.65 422.85 1.3034; 
120 0.0010576 501.91 507.19 1.5236; 
140 0.0010769 586.80 592.18 1.7344; 
160 0.0010988 672.55 678.04 1.9374;
180 0.0011240 759.47 765.09 2.1338; 
200 0.0011531 847.92 853.68 2.3251; 
220 0.0011868 938.39 944.32 2.5127; 
240 0.0012268 1031.6 1037.7 2.6983;
260 0.0012755 1128.5 1134.9 2.8841; 
280 0 0 0 0;
300 0 0 0 0; 
320 0 0 0 0;
340 0 0 0 0]; 


TP2 = [311 0.0014522 1393.3 1407.9 3.3603;
0  0.0009952 0.12 10.07 0.0003; 
20  0.0009973 83.31 93.28 0.2943; 
40  0.0010035 166.33 176.37 0.5685; 
60  0.0010127 249.43 259.55 0.8260; 
80  0.0010244 332.69 342.94 1.0691; 
100 0.0010385 416.23 426.62 1.2996; 
120 0.0010549 500.18 510.73 1.5191; 
140 0.0010738 584.72 595.45 1.7293; 
160 0.0010954 670.06 681.01 1.9316;
180 0.0011200 756.48 767.68 2.1271;
200 0.0011482 844.32 855.80 2.3174;
220 0.0011809 934.01 945.82 2.5037;
240 0.0012192 1026.2 1038.3 2.6876;
260 0.0012653 1121.6 1134.3 2.8710;
280 0.0013226 1221.8 1235.0 3.0565;
300 0.0013980 1329.4 1343.3 3.2488;
320 0 0 0 0;
340 0 0 0 0]; 

TP3 = [342.16 0.0016572 1585.5 1610.3 3.6848;
0 0.0009928 0.18 15.07 0.0004;
20 0.0009951 83.01 97.93 0.2932;
40 0.0010013 165.75 180.77 0.5666;
60 0.0010105 248.58 263.74 0.8234;
80 0.0010221 331.59 346.92 1.0659;
100 0.0010361 414.85 430.39 1.2958;
120 0.0010522 498.50 514.28 1.5148;
140 0.0010708 582.69 598.75 1.7243;
160 0.0010920 667.63 684.01 1.9259;
180 0.0011160 753.58 770.32 2.1206;
200 0.0011435 840.84 858.00 2.3100;
220 0.0011752 929.81 947.43 2.4951;
240 0.0012121 1021.0 1039.2 2.6774;
260 0.0012560 1115.1 1134.0 2.8586;
280 0.0013096 1213.4 1233.0 3.0410;
300 0.0013783 1317.6 1338.3 3.2279;
320 0.0014733 1431.9 1454.0 3.4263;
340 0.0016311 1567.9 1592.4 3.6555];

TP4=[365.75 0.0020378 1785.8 1826.6 4.0146;
0 0.0009904 0.23 20.03 0.0005;
20 0.0009929 82.71 102.57 0.2921;
40 0.0009992 165.17 185.16 0.5646;
60 0.0010084 247.75 267.92 0.8208;
80 0.0010199 330.50 350.90 1.0627;
100 0.0010337 413.50 434.17 1.2920;
120 0.0010496 496.85 517.84 1.5105;
140 0.0010679 580.71 602.07 1.7194;
160 0.0010886 665.28 687.05 1.9203;
180 0.0011122 750.78 773.02 2.1143;
200 0.0011390 837.49 860.27 2.3027;
220 0.0011697 925.77 949.16 2.4867;
240 0.0012053 1016.1 1040.2 2.6676;
260 0.0012472 1109.0 1134.0 2.8469;
280 0.0012978 1205.6 1231.5 3.0265;
300 0.0013611 1307.2 1334.4 3.2091;
320 0.0014450 1416.6 1445.5 3.3996;
340 0.0015693 1540.2 1571.6 3.6086;
360 0.0018248 1703.6 1740.1 3.8787;
380 0 0 0 0];

TP5=[0 0.0009857 0.29 29.86 0.0003;
20 0.0009886 82.11 111.77 0.2897;
40 0.0009951 164.05 193.90 0.5607;
60 0.0010042 246.14 276.26 0.8156;
80 0.0010155 328.40 358.86 1.0564;
100 0.0010290 410.87 441.74 1.2847;
120 0.0010445 493.66 525.00 1.5020;
140 0.0010623 576.90 608.76 1.7098;
160 0.0010823 660.74 693.21 1.9094;
180 0.0011049 745.40 778.55 2.1020;
200 0.0011304 831.11 865.02 2.2888;
220 0.0011595 918.15 952.93 2.4707;
240 0.0011927 1006.9 1042.7 2.6491;
260 0.0012314 1097.8 1134.7 2.8250;
280 0.0012770 1191.5 1229.8 3.0001;
300 0.0013322 1288.9 1328.9 3.1761;
320 0.0014014 1391.7 1433.7 3.3558;
340 0.0014932 1502.4 1547.1 3.5438;
360 0.0016276 1626.8 1675.6 3.7499;
380 0.0018729 1782.0 1838.2 4.0026];

TP6=[0 0.0009767 0.29 49.13 -0.0010;
20 0.0009805 80.93 129.95 0.2845;
40 0.0009872 161.90 211.25 0.5528;
60 0.0009962 243.08 292.88 0.8055;
80 0.0010072 324.42 374.78 1.0442;
100 0.0010201 405.94 456.94 1.2705;
120 0.0010349 487.69 539.43 1.4859;
140 0.0010517 569.77 622.36 1.6916;
160 0.0010704 652.33 705.85 1.8889;
180 0.0010914 735.49 790.06 2.0790;
200 0.0011149 819.45 875.19 2.2628;
220 0.0011412 904.39 961.45 2.4414;
240 0.0011708 990.55 1049.1 2.6156;
260 0.0012044 1078.2 1138.4 2.7864;
280 0.0012430 1167.7 1229.9 2.9547;
300 0.0012879 1259.6 1324.0 3.1218;
320 0.0013409 1354.3 1421.4 3.2888;
340 0.0014049 1452.9 1523.1 3.4575;
360 0.0014848 1556.5 1630.7 3.6301;
380 0.0015884 1667.1 1746.5 3.8102];

pp1 = 5000;
pp2 = 10000;
pp3 = 15000;
pp4 = 20000;
pp5 = 30000;
pp6 = 50000;

VecPresiones=[pp1;
pp2;
pp3;
pp4;
pp5;
pp6];

%_____________________________________________________%




%5MPa
if(P==5000)
y = [263.94 0.0012862 1148.1 1154.5 2.9207;
0 0.0009977 0.04 5.03 0.0001; 
20 0.0009996 83.61 88.61 0.2954; 
40 0.0010057 166.92 171.95 0.5705; 
60 0.0010149 250.29 255.36 0.8287; 
80 0.0010267 333.82 338.96 1.0723; 
100 0.0010410 417.65 422.85 1.3034; 
120 0.0010576 501.91 507.19 1.5236; 
140 0.0010769 586.80 592.18 1.7344; 
160 0.0010988 672.55 678.04 1.9374;
180 0.0011240 759.47 765.09 2.1338; 
200 0.0011531 847.92 853.68 2.3251; 
220 0.0011868 938.39 944.32 2.5127; 
240 0.0012268 1031.6 1037.7 2.6983;
260 0.0012755 1128.5 1134.9 2.8841; 
280 0 0 0 0;
300 0 0 0 0; 
320 0 0 0 0;
340 0 0 0 0]; 
end
%10MPa
if(P==10000)
y = [311 0.0014522 1393.3 1407.9 3.3603;
0  0.0009952 0.12 10.07 0.0003; 
20  0.0009973 83.31 93.28 0.2943; 
40  0.0010035 166.33 176.37 0.5685; 
60  0.0010127 249.43 259.55 0.8260; 
80  0.0010244 332.69 342.94 1.0691; 
100 0.0010385 416.23 426.62 1.2996; 
120 0.0010549 500.18 510.73 1.5191; 
140 0.0010738 584.72 595.45 1.7293; 
160 0.0010954 670.06 681.01 1.9316;
180 0.0011200 756.48 767.68 2.1271;
200 0.0011482 844.32 855.80 2.3174;
220 0.0011809 934.01 945.82 2.5037;
240 0.0012192 1026.2 1038.3 2.6876;
260 0.0012653 1121.6 1134.3 2.8710;
280 0.0013226 1221.8 1235.0 3.0565;
300 0.0013980 1329.4 1343.3 3.2488;
320 0 0 0 0;
340 0 0 0 0]; 
end
%15MPa
if(P==15000)
y = [342.16 0.0016572 1585.5 1610.3 3.6848;
0 0.0009928 0.18 15.07 0.0004;
20 0.0009951 83.01 97.93 0.2932;
40 0.0010013 165.75 180.77 0.5666;
60 0.0010105 248.58 263.74 0.8234;
80 0.0010221 331.59 346.92 1.0659;
100 0.0010361 414.85 430.39 1.2958;
120 0.0010522 498.50 514.28 1.5148;
140 0.0010708 582.69 598.75 1.7243;
160 0.0010920 667.63 684.01 1.9259;
180 0.0011160 753.58 770.32 2.1206;
200 0.0011435 840.84 858.00 2.3100;
220 0.0011752 929.81 947.43 2.4951;
240 0.0012121 1021.0 1039.2 2.6774;
260 0.0012560 1115.1 1134.0 2.8586;
280 0.0013096 1213.4 1233.0 3.0410;
300 0.0013783 1317.6 1338.3 3.2279;
320 0.0014733 1431.9 1454.0 3.4263;
340 0.0016311 1567.9 1592.4 3.6555];
end

if(P==20000)
y=[365.75 0.0020378 1785.8 1826.6 4.0146;
0 0.0009904 0.23 20.03 0.0005;
20 0.0009929 82.71 102.57 0.2921;
40 0.0009992 165.17 185.16 0.5646;
60 0.0010084 247.75 267.92 0.8208;
80 0.0010199 330.50 350.90 1.0627;
100 0.0010337 413.50 434.17 1.2920;
120 0.0010496 496.85 517.84 1.5105;
140 0.0010679 580.71 602.07 1.7194;
160 0.0010886 665.28 687.05 1.9203;
180 0.0011122 750.78 773.02 2.1143;
200 0.0011390 837.49 860.27 2.3027;
220 0.0011697 925.77 949.16 2.4867;
240 0.0012053 1016.1 1040.2 2.6676;
260 0.0012472 1109.0 1134.0 2.8469;
280 0.0012978 1205.6 1231.5 3.0265;
300 0.0013611 1307.2 1334.4 3.2091;
320 0.0014450 1416.6 1445.5 3.3996;
340 0.0015693 1540.2 1571.6 3.6086;
360 0.0018248 1703.6 1740.1 3.8787;
380 0 0 0 0];
end

if(P==30000)
y=[0 0.0009857 0.29 29.86 0.0003;
20 0.0009886 82.11 111.77 0.2897;
40 0.0009951 164.05 193.90 0.5607;
60 0.0010042 246.14 276.26 0.8156;
80 0.0010155 328.40 358.86 1.0564;
100 0.0010290 410.87 441.74 1.2847;
120 0.0010445 493.66 525.00 1.5020;
140 0.0010623 576.90 608.76 1.7098;
160 0.0010823 660.74 693.21 1.9094;
180 0.0011049 745.40 778.55 2.1020;
200 0.0011304 831.11 865.02 2.2888;
220 0.0011595 918.15 952.93 2.4707;
240 0.0011927 1006.9 1042.7 2.6491;
260 0.0012314 1097.8 1134.7 2.8250;
280 0.0012770 1191.5 1229.8 3.0001;
300 0.0013322 1288.9 1328.9 3.1761;
320 0.0014014 1391.7 1433.7 3.3558;
340 0.0014932 1502.4 1547.1 3.5438;
360 0.0016276 1626.8 1675.6 3.7499;
380 0.0018729 1782.0 1838.2 4.0026];
end
if(P==50000)
    y=[0 0.0009767 0.29 49.13 -0.0010;
20 0.0009805 80.93 129.95 0.2845;
40 0.0009872 161.90 211.25 0.5528;
60 0.0009962 243.08 292.88 0.8055;
80 0.0010072 324.42 374.78 1.0442;
100 0.0010201 405.94 456.94 1.2705;
120 0.0010349 487.69 539.43 1.4859;
140 0.0010517 569.77 622.36 1.6916;
160 0.0010704 652.33 705.85 1.8889;
180 0.0010914 735.49 790.06 2.0790;
200 0.0011149 819.45 875.19 2.2628;
220 0.0011412 904.39 961.45 2.4414;
240 0.0011708 990.55 1049.1 2.6156;
260 0.0012044 1078.2 1138.4 2.7864;
280 0.0012430 1167.7 1229.9 2.9547;
300 0.0012879 1259.6 1324.0 3.1218;
320 0.0013409 1354.3 1421.4 3.2888;
340 0.0014049 1452.9 1523.1 3.4575;
360 0.0014848 1556.5 1630.7 3.6301;
380 0.0015884 1667.1 1746.5 3.8102];
end
if(P~=pp1 && P~=pp2 && P~=pp3 && P~=pp4 && P~=pp5 && P~=pp6)
    [minimo,posicion]=min(abs(P-VecPresiones));

aux = P-VecPresiones(posicion);
if aux>0
    datoant=VecPresiones(posicion);
    datosig=VecPresiones(posicion+1);
    if(datoant==5000)
        TPant=TP1;
    end
    if(datoant==10000)
        TPant=TP2;
    end
    if(datoant==15000)
        TPant=TP3;
    end
    if(datoant==20000)
        TPant=TP4;
    end
    if(datoant==30000)
        TPant=TP5;
    end
    if(datoant==50000)
        TPant=TP6;
    end
    if(datosig==5000)
        TPsig=TP1;
    end
    if(datosig==10000)
        TPsig=TP2;
    end
    if(datosig==15000)
        TPsig=TP3;
    end
    if(datosig==20000)
        TPsig=TP4;
    end
    if(datosig==30000)
        TPsig=TP5;
    end
    if(datosig==50000)
        TPsig=TP6;
    end
    y = [((((TPant(1,1)-TPsig(1,1))*(P-datosig))/(datoant-datosig))+TPsig(1,1)) ((((vpa(TPant(1,2),4)-vpa(TPsig(1,2),4))*(P-datosig))/(datoant-datosig))+vpa(TPsig(1,2),4)) ((((TPant(1,3)-TPsig(1,3))*(P-datosig))/(datoant-datosig))+TPsig(1,3)) ((((TPant(1,4)-TPsig(1,4))*(P-datosig))/(datoant-datosig))+TPsig(1,4)) ((((TPant(1,5)-TPsig(1,5))*(P-datosig))/(datoant-datosig))+TPsig(1,5));
        ((((TPant(2,1)-TPsig(2,1))*(P-datosig))/(datoant-datosig))+TPsig(2,1)) ((((vpa(TPant(2,2),4)-vpa(TPsig(2,2),4))*(P-datosig))/(datoant-datosig))+vpa(TPsig(2,2),4)) ((((TPant(2,3)-TPsig(2,3))*(P-datosig))/(datoant-datosig))+TPsig(2,3)) ((((TPant(2,4)-TPsig(2,4))*(P-datosig))/(datoant-datosig))+TPsig(2,4)) ((((TPant(2,5)-TPsig(2,5))*(P-datosig))/(datoant-datosig))+TPsig(2,5));
        ((((TPant(3,1)-TPsig(3,1))*(P-datosig))/(datoant-datosig))+TPsig(3,1)) ((((vpa(TPant(3,2),4)-vpa(TPsig(3,2),4))*(P-datosig))/(datoant-datosig))+vpa(TPsig(3,2),4)) ((((TPant(3,3)-TPsig(3,3))*(P-datosig))/(datoant-datosig))+TPsig(3,3)) ((((TPant(3,4)-TPsig(3,4))*(P-datosig))/(datoant-datosig))+TPsig(3,4)) ((((TPant(3,5)-TPsig(3,5))*(P-datosig))/(datoant-datosig))+TPsig(3,5));
        ((((TPant(4,1)-TPsig(4,1))*(P-datosig))/(datoant-datosig))+TPsig(4,1)) ((((vpa(TPant(4,2),4)-vpa(TPsig(4,2),4))*(P-datosig))/(datoant-datosig))+vpa(TPsig(4,2),4)) ((((TPant(4,3)-TPsig(4,3))*(P-datosig))/(datoant-datosig))+TPsig(4,3)) ((((TPant(4,4)-TPsig(4,4))*(P-datosig))/(datoant-datosig))+TPsig(4,4)) ((((TPant(4,5)-TPsig(4,5))*(P-datosig))/(datoant-datosig))+TPsig(4,5));
        ((((TPant(5,1)-TPsig(5,1))*(P-datosig))/(datoant-datosig))+TPsig(5,1)) ((((vpa(TPant(5,2),4)-vpa(TPsig(5,2),4))*(P-datosig))/(datoant-datosig))+vpa(TPsig(5,2),4)) ((((TPant(5,3)-TPsig(5,3))*(P-datosig))/(datoant-datosig))+TPsig(5,3)) ((((TPant(5,4)-TPsig(5,4))*(P-datosig))/(datoant-datosig))+TPsig(5,4)) ((((TPant(5,5)-TPsig(5,5))*(P-datosig))/(datoant-datosig))+TPsig(5,5));
        ((((TPant(6,1)-TPsig(6,1))*(P-datosig))/(datoant-datosig))+TPsig(6,1)) ((((vpa(TPant(6,2),4)-vpa(TPsig(6,2),4))*(P-datosig))/(datoant-datosig))+vpa(TPsig(6,2),4)) ((((TPant(6,3)-TPsig(6,3))*(P-datosig))/(datoant-datosig))+TPsig(6,3)) ((((TPant(6,4)-TPsig(6,4))*(P-datosig))/(datoant-datosig))+TPsig(6,4)) ((((TPant(6,5)-TPsig(6,5))*(P-datosig))/(datoant-datosig))+TPsig(6,5));
        ((((TPant(7,1)-TPsig(7,1))*(P-datosig))/(datoant-datosig))+TPsig(7,1)) ((((vpa(TPant(7,2),4)-vpa(TPsig(7,2),4))*(P-datosig))/(datoant-datosig))+vpa(TPsig(7,2),4)) ((((TPant(7,3)-TPsig(7,3))*(P-datosig))/(datoant-datosig))+TPsig(7,3)) ((((TPant(7,4)-TPsig(7,4))*(P-datosig))/(datoant-datosig))+TPsig(7,4)) ((((TPant(7,5)-TPsig(7,5))*(P-datosig))/(datoant-datosig))+TPsig(7,5));
        ((((TPant(8,1)-TPsig(8,1))*(P-datosig))/(datoant-datosig))+TPsig(8,1)) ((((vpa(TPant(8,2),4)-vpa(TPsig(8,2),4))*(P-datosig))/(datoant-datosig))+vpa(TPsig(8,2),4)) ((((TPant(8,3)-TPsig(8,3))*(P-datosig))/(datoant-datosig))+TPsig(8,3)) ((((TPant(8,4)-TPsig(8,4))*(P-datosig))/(datoant-datosig))+TPsig(8,4)) ((((TPant(8,5)-TPsig(8,5))*(P-datosig))/(datoant-datosig))+TPsig(8,5));
        ((((TPant(9,1)-TPsig(9,1))*(P-datosig))/(datoant-datosig))+TPsig(9,1)) ((((vpa(TPant(9,2),4)-vpa(TPsig(9,2),4))*(P-datosig))/(datoant-datosig))+vpa(TPsig(9,2),4)) ((((TPant(9,3)-TPsig(9,3))*(P-datosig))/(datoant-datosig))+TPsig(9,3)) ((((TPant(9,4)-TPsig(9,4))*(P-datosig))/(datoant-datosig))+TPsig(9,4)) ((((TPant(9,5)-TPsig(9,5))*(P-datosig))/(datoant-datosig))+TPsig(9,5));
        ((((TPant(10,1)-TPsig(10,1))*(P-datosig))/(datoant-datosig))+TPsig(10,1)) ((((vpa(TPant(10,2),4)-vpa(TPsig(10,2),4))*(P-datosig))/(datoant-datosig))+vpa(TPsig(10,2),4)) ((((TPant(10,3)-TPsig(10,3))*(P-datosig))/(datoant-datosig))+TPsig(10,3)) ((((TPant(10,4)-TPsig(10,4))*(P-datosig))/(datoant-datosig))+TPsig(10,4)) ((((TPant(10,5)-TPsig(10,5))*(P-datosig))/(datoant-datosig))+TPsig(10,5));
        ((((TPant(11,1)-TPsig(11,1))*(P-datosig))/(datoant-datosig))+TPsig(11,1)) ((((vpa(TPant(11,2),4)-vpa(TPsig(11,2),4))*(P-datosig))/(datoant-datosig))+vpa(TPsig(11,2),4)) ((((TPant(11,3)-TPsig(11,3))*(P-datosig))/(datoant-datosig))+TPsig(11,3)) ((((TPant(11,4)-TPsig(11,4))*(P-datosig))/(datoant-datosig))+TPsig(11,4)) ((((TPant(11,5)-TPsig(11,5))*(P-datosig))/(datoant-datosig))+TPsig(11,5));
        ((((TPant(12,1)-TPsig(12,1))*(P-datosig))/(datoant-datosig))+TPsig(12,1)) ((((vpa(TPant(12,2),4)-vpa(TPsig(12,2),4))*(P-datosig))/(datoant-datosig))+vpa(TPsig(12,2),4)) ((((TPant(12,3)-TPsig(12,3))*(P-datosig))/(datoant-datosig))+TPsig(12,3)) ((((TPant(12,4)-TPsig(12,4))*(P-datosig))/(datoant-datosig))+TPsig(12,4)) ((((TPant(12,5)-TPsig(12,5))*(P-datosig))/(datoant-datosig))+TPsig(12,5));
        ((((TPant(13,1)-TPsig(13,1))*(P-datosig))/(datoant-datosig))+TPsig(13,1)) ((((vpa(TPant(13,2),4)-vpa(TPsig(13,2),4))*(P-datosig))/(datoant-datosig))+vpa(TPsig(13,2),4)) ((((TPant(13,3)-TPsig(13,3))*(P-datosig))/(datoant-datosig))+TPsig(13,3)) ((((TPant(13,4)-TPsig(13,4))*(P-datosig))/(datoant-datosig))+TPsig(13,4)) ((((TPant(13,5)-TPsig(13,5))*(P-datosig))/(datoant-datosig))+TPsig(13,5));
        ((((TPant(14,1)-TPsig(14,1))*(P-datosig))/(datoant-datosig))+TPsig(14,1)) ((((vpa(TPant(14,2),4)-vpa(TPsig(14,2),4))*(P-datosig))/(datoant-datosig))+vpa(TPsig(14,2),4)) ((((TPant(14,3)-TPsig(14,3))*(P-datosig))/(datoant-datosig))+TPsig(14,3)) ((((TPant(14,4)-TPsig(14,4))*(P-datosig))/(datoant-datosig))+TPsig(14,4)) ((((TPant(14,5)-TPsig(14,5))*(P-datosig))/(datoant-datosig))+TPsig(14,5));
        ((((TPant(15,1)-TPsig(15,1))*(P-datosig))/(datoant-datosig))+TPsig(15,1)) ((((vpa(TPant(15,2),4)-vpa(TPsig(15,2),4))*(P-datosig))/(datoant-datosig))+vpa(TPsig(15,2),4)) ((((TPant(15,3)-TPsig(15,3))*(P-datosig))/(datoant-datosig))+TPsig(15,3)) ((((TPant(15,4)-TPsig(15,4))*(P-datosig))/(datoant-datosig))+TPsig(15,4)) ((((TPant(15,5)-TPsig(15,5))*(P-datosig))/(datoant-datosig))+TPsig(15,5));
        ((((TPant(16,1)-TPsig(16,1))*(P-datosig))/(datoant-datosig))+TPsig(16,1)) ((((vpa(TPant(16,2),4)-vpa(TPsig(16,2),4))*(P-datosig))/(datoant-datosig))+vpa(TPsig(16,2),4)) ((((TPant(16,3)-TPsig(16,3))*(P-datosig))/(datoant-datosig))+TPsig(16,3)) ((((TPant(16,4)-TPsig(16,4))*(P-datosig))/(datoant-datosig))+TPsig(16,4)) ((((TPant(16,5)-TPsig(16,5))*(P-datosig))/(datoant-datosig))+TPsig(16,5));
        ((((TPant(17,1)-TPsig(17,1))*(P-datosig))/(datoant-datosig))+TPsig(17,1)) ((((vpa(TPant(17,2),4)-vpa(TPsig(17,2),4))*(P-datosig))/(datoant-datosig))+vpa(TPsig(17,2),4)) ((((TPant(17,3)-TPsig(17,3))*(P-datosig))/(datoant-datosig))+TPsig(17,3)) ((((TPant(17,4)-TPsig(17,4))*(P-datosig))/(datoant-datosig))+TPsig(17,4)) ((((TPant(17,5)-TPsig(17,5))*(P-datosig))/(datoant-datosig))+TPsig(17,5));
        ((((TPant(18,1)-TPsig(18,1))*(P-datosig))/(datoant-datosig))+TPsig(18,1)) ((((vpa(TPant(18,2),4)-vpa(TPsig(18,2),4))*(P-datosig))/(datoant-datosig))+vpa(TPsig(18,2),4)) ((((TPant(18,3)-TPsig(18,3))*(P-datosig))/(datoant-datosig))+TPsig(18,3)) ((((TPant(18,4)-TPsig(18,4))*(P-datosig))/(datoant-datosig))+TPsig(18,4)) ((((TPant(18,5)-TPsig(18,5))*(P-datosig))/(datoant-datosig))+TPsig(18,5));
        ((((TPant(19,1)-TPsig(19,1))*(P-datosig))/(datoant-datosig))+TPsig(19,1)) ((((vpa(TPant(19,2),4)-vpa(TPsig(19,2),4))*(P-datosig))/(datoant-datosig))+vpa(TPsig(19,2),4)) ((((TPant(19,3)-TPsig(19,3))*(P-datosig))/(datoant-datosig))+TPsig(19,3)) ((((TPant(19,4)-TPsig(19,4))*(P-datosig))/(datoant-datosig))+TPsig(19,4)) ((((TPant(19,5)-TPsig(19,5))*(P-datosig))/(datoant-datosig))+TPsig(19,5))];
        
    y = vpa(y)
        else
    datoant=VecPresiones(posicion-1);
    datosig=VecPresiones(posicion);   
    if(datoant==5000)
        TPant=TP1;
    end
    if(datoant==10000)
        TPant=TP2;
    end
    if(datoant==15000)
        TPant=TP3;
    end
    if(datoant==20000)
        TPant=TP4;
    end
    if(datoant==30000)
        TPant=TP5;
    end
    if(datoant==50000)
        TPant=TP6;
    end
    if(datosig==5000)
        TPsig=TP1;
    end
    if(datosig==10000)
        TPsig=TP2;
    end
    if(datosig==15000)
        TPsig=TP3;
    end
    if(datosig==20000)
        TPsig=TP4;
    end
    if(datosig==30000)
        TPsig=TP5;
    end
    if(datosig==50000)
        TPsig=TP6;
    end
    y = [((((TPant(1,1)-TPsig(1,1))*(P-datosig))/(datoant-datosig))+TPsig(1,1)) ((((vpa(TPant(1,2),4)-vpa(TPsig(1,2),4))*(P-datosig))/(datoant-datosig))+vpa(TPsig(1,2),4)) ((((TPant(1,3)-TPsig(1,3))*(P-datosig))/(datoant-datosig))+TPsig(1,3)) ((((TPant(1,4)-TPsig(1,4))*(P-datosig))/(datoant-datosig))+TPsig(1,4)) ((((TPant(1,5)-TPsig(1,5))*(P-datosig))/(datoant-datosig))+TPsig(1,5));
        ((((TPant(2,1)-TPsig(2,1))*(P-datosig))/(datoant-datosig))+TPsig(2,1)) ((((vpa(TPant(2,2),4)-vpa(TPsig(2,2),4))*(P-datosig))/(datoant-datosig))+vpa(TPsig(2,2),4)) ((((TPant(2,3)-TPsig(2,3))*(P-datosig))/(datoant-datosig))+TPsig(2,3)) ((((TPant(2,4)-TPsig(2,4))*(P-datosig))/(datoant-datosig))+TPsig(2,4)) ((((TPant(2,5)-TPsig(2,5))*(P-datosig))/(datoant-datosig))+TPsig(2,5));
        ((((TPant(3,1)-TPsig(3,1))*(P-datosig))/(datoant-datosig))+TPsig(3,1)) ((((vpa(TPant(3,2),4)-vpa(TPsig(3,2),4))*(P-datosig))/(datoant-datosig))+vpa(TPsig(3,2),4)) ((((TPant(3,3)-TPsig(3,3))*(P-datosig))/(datoant-datosig))+TPsig(3,3)) ((((TPant(3,4)-TPsig(3,4))*(P-datosig))/(datoant-datosig))+TPsig(3,4)) ((((TPant(3,5)-TPsig(3,5))*(P-datosig))/(datoant-datosig))+TPsig(3,5));
        ((((TPant(4,1)-TPsig(4,1))*(P-datosig))/(datoant-datosig))+TPsig(4,1)) ((((vpa(TPant(4,2),4)-vpa(TPsig(4,2),4))*(P-datosig))/(datoant-datosig))+vpa(TPsig(4,2),4)) ((((TPant(4,3)-TPsig(4,3))*(P-datosig))/(datoant-datosig))+TPsig(4,3)) ((((TPant(4,4)-TPsig(4,4))*(P-datosig))/(datoant-datosig))+TPsig(4,4)) ((((TPant(4,5)-TPsig(4,5))*(P-datosig))/(datoant-datosig))+TPsig(4,5));
        ((((TPant(5,1)-TPsig(5,1))*(P-datosig))/(datoant-datosig))+TPsig(5,1)) ((((vpa(TPant(5,2),4)-vpa(TPsig(5,2),4))*(P-datosig))/(datoant-datosig))+vpa(TPsig(5,2),4)) ((((TPant(5,3)-TPsig(5,3))*(P-datosig))/(datoant-datosig))+TPsig(5,3)) ((((TPant(5,4)-TPsig(5,4))*(P-datosig))/(datoant-datosig))+TPsig(5,4)) ((((TPant(5,5)-TPsig(5,5))*(P-datosig))/(datoant-datosig))+TPsig(5,5));
        ((((TPant(6,1)-TPsig(6,1))*(P-datosig))/(datoant-datosig))+TPsig(6,1)) ((((vpa(TPant(6,2),4)-vpa(TPsig(6,2),4))*(P-datosig))/(datoant-datosig))+vpa(TPsig(6,2),4)) ((((TPant(6,3)-TPsig(6,3))*(P-datosig))/(datoant-datosig))+TPsig(6,3)) ((((TPant(6,4)-TPsig(6,4))*(P-datosig))/(datoant-datosig))+TPsig(6,4)) ((((TPant(6,5)-TPsig(6,5))*(P-datosig))/(datoant-datosig))+TPsig(6,5));
        ((((TPant(7,1)-TPsig(7,1))*(P-datosig))/(datoant-datosig))+TPsig(7,1)) ((((vpa(TPant(7,2),4)-vpa(TPsig(7,2),4))*(P-datosig))/(datoant-datosig))+vpa(TPsig(7,2),4)) ((((TPant(7,3)-TPsig(7,3))*(P-datosig))/(datoant-datosig))+TPsig(7,3)) ((((TPant(7,4)-TPsig(7,4))*(P-datosig))/(datoant-datosig))+TPsig(7,4)) ((((TPant(7,5)-TPsig(7,5))*(P-datosig))/(datoant-datosig))+TPsig(7,5));
        ((((TPant(8,1)-TPsig(8,1))*(P-datosig))/(datoant-datosig))+TPsig(8,1)) ((((vpa(TPant(8,2),4)-vpa(TPsig(8,2),4))*(P-datosig))/(datoant-datosig))+vpa(TPsig(8,2),4)) ((((TPant(8,3)-TPsig(8,3))*(P-datosig))/(datoant-datosig))+TPsig(8,3)) ((((TPant(8,4)-TPsig(8,4))*(P-datosig))/(datoant-datosig))+TPsig(8,4)) ((((TPant(8,5)-TPsig(8,5))*(P-datosig))/(datoant-datosig))+TPsig(8,5));
        ((((TPant(9,1)-TPsig(9,1))*(P-datosig))/(datoant-datosig))+TPsig(9,1)) ((((vpa(TPant(9,2),4)-vpa(TPsig(9,2),4))*(P-datosig))/(datoant-datosig))+vpa(TPsig(9,2),4)) ((((TPant(9,3)-TPsig(9,3))*(P-datosig))/(datoant-datosig))+TPsig(9,3)) ((((TPant(9,4)-TPsig(9,4))*(P-datosig))/(datoant-datosig))+TPsig(9,4)) ((((TPant(9,5)-TPsig(9,5))*(P-datosig))/(datoant-datosig))+TPsig(9,5));
        ((((TPant(10,1)-TPsig(10,1))*(P-datosig))/(datoant-datosig))+TPsig(10,1)) ((((vpa(TPant(10,2),4)-vpa(TPsig(10,2),4))*(P-datosig))/(datoant-datosig))+vpa(TPsig(10,2),4)) ((((TPant(10,3)-TPsig(10,3))*(P-datosig))/(datoant-datosig))+TPsig(10,3)) ((((TPant(10,4)-TPsig(10,4))*(P-datosig))/(datoant-datosig))+TPsig(10,4)) ((((TPant(10,5)-TPsig(10,5))*(P-datosig))/(datoant-datosig))+TPsig(10,5));
        ((((TPant(11,1)-TPsig(11,1))*(P-datosig))/(datoant-datosig))+TPsig(11,1)) ((((vpa(TPant(11,2),4)-vpa(TPsig(11,2),4))*(P-datosig))/(datoant-datosig))+vpa(TPsig(11,2),4)) ((((TPant(11,3)-TPsig(11,3))*(P-datosig))/(datoant-datosig))+TPsig(11,3)) ((((TPant(11,4)-TPsig(11,4))*(P-datosig))/(datoant-datosig))+TPsig(11,4)) ((((TPant(11,5)-TPsig(11,5))*(P-datosig))/(datoant-datosig))+TPsig(11,5));
        ((((TPant(12,1)-TPsig(12,1))*(P-datosig))/(datoant-datosig))+TPsig(12,1)) ((((vpa(TPant(12,2),4)-vpa(TPsig(12,2),4))*(P-datosig))/(datoant-datosig))+vpa(TPsig(12,2),4)) ((((TPant(12,3)-TPsig(12,3))*(P-datosig))/(datoant-datosig))+TPsig(12,3)) ((((TPant(12,4)-TPsig(12,4))*(P-datosig))/(datoant-datosig))+TPsig(12,4)) ((((TPant(12,5)-TPsig(12,5))*(P-datosig))/(datoant-datosig))+TPsig(12,5));
        ((((TPant(13,1)-TPsig(13,1))*(P-datosig))/(datoant-datosig))+TPsig(13,1)) ((((vpa(TPant(13,2),4)-vpa(TPsig(13,2),4))*(P-datosig))/(datoant-datosig))+vpa(TPsig(13,2),4)) ((((TPant(13,3)-TPsig(13,3))*(P-datosig))/(datoant-datosig))+TPsig(13,3)) ((((TPant(13,4)-TPsig(13,4))*(P-datosig))/(datoant-datosig))+TPsig(13,4)) ((((TPant(13,5)-TPsig(13,5))*(P-datosig))/(datoant-datosig))+TPsig(13,5));
        ((((TPant(14,1)-TPsig(14,1))*(P-datosig))/(datoant-datosig))+TPsig(14,1)) ((((vpa(TPant(14,2),4)-vpa(TPsig(14,2),4))*(P-datosig))/(datoant-datosig))+vpa(TPsig(14,2),4)) ((((TPant(14,3)-TPsig(14,3))*(P-datosig))/(datoant-datosig))+TPsig(14,3)) ((((TPant(14,4)-TPsig(14,4))*(P-datosig))/(datoant-datosig))+TPsig(14,4)) ((((TPant(14,5)-TPsig(14,5))*(P-datosig))/(datoant-datosig))+TPsig(14,5));
        ((((TPant(15,1)-TPsig(15,1))*(P-datosig))/(datoant-datosig))+TPsig(15,1)) ((((vpa(TPant(15,2),4)-vpa(TPsig(15,2),4))*(P-datosig))/(datoant-datosig))+vpa(TPsig(15,2),4)) ((((TPant(15,3)-TPsig(15,3))*(P-datosig))/(datoant-datosig))+TPsig(15,3)) ((((TPant(15,4)-TPsig(15,4))*(P-datosig))/(datoant-datosig))+TPsig(15,4)) ((((TPant(15,5)-TPsig(15,5))*(P-datosig))/(datoant-datosig))+TPsig(15,5));
        ((((TPant(16,1)-TPsig(16,1))*(P-datosig))/(datoant-datosig))+TPsig(16,1)) ((((vpa(TPant(16,2),4)-vpa(TPsig(16,2),4))*(P-datosig))/(datoant-datosig))+vpa(TPsig(16,2),4)) ((((TPant(16,3)-TPsig(16,3))*(P-datosig))/(datoant-datosig))+TPsig(16,3)) ((((TPant(16,4)-TPsig(16,4))*(P-datosig))/(datoant-datosig))+TPsig(16,4)) ((((TPant(16,5)-TPsig(16,5))*(P-datosig))/(datoant-datosig))+TPsig(16,5));
        ((((TPant(17,1)-TPsig(17,1))*(P-datosig))/(datoant-datosig))+TPsig(17,1)) ((((vpa(TPant(17,2),4)-vpa(TPsig(17,2),4))*(P-datosig))/(datoant-datosig))+vpa(TPsig(17,2),4)) ((((TPant(17,3)-TPsig(17,3))*(P-datosig))/(datoant-datosig))+TPsig(17,3)) ((((TPant(17,4)-TPsig(17,4))*(P-datosig))/(datoant-datosig))+TPsig(17,4)) ((((TPant(17,5)-TPsig(17,5))*(P-datosig))/(datoant-datosig))+TPsig(17,5));
        ((((TPant(18,1)-TPsig(18,1))*(P-datosig))/(datoant-datosig))+TPsig(18,1)) ((((vpa(TPant(18,2),4)-vpa(TPsig(18,2),4))*(P-datosig))/(datoant-datosig))+vpa(TPsig(18,2),4)) ((((TPant(18,3)-TPsig(18,3))*(P-datosig))/(datoant-datosig))+TPsig(18,3)) ((((TPant(18,4)-TPsig(18,4))*(P-datosig))/(datoant-datosig))+TPsig(18,4)) ((((TPant(18,5)-TPsig(18,5))*(P-datosig))/(datoant-datosig))+TPsig(18,5));
        ((((TPant(19,1)-TPsig(19,1))*(P-datosig))/(datoant-datosig))+TPsig(19,1)) ((((vpa(TPant(19,2),4)-vpa(TPsig(19,2),4))*(P-datosig))/(datoant-datosig))+vpa(TPsig(19,2),4)) ((((TPant(19,3)-TPsig(19,3))*(P-datosig))/(datoant-datosig))+TPsig(19,3)) ((((TPant(19,4)-TPsig(19,4))*(P-datosig))/(datoant-datosig))+TPsig(19,4)) ((((TPant(19,5)-TPsig(19,5))*(P-datosig))/(datoant-datosig))+TPsig(19,5))];
    
    y = vpa(y)
end
end
end