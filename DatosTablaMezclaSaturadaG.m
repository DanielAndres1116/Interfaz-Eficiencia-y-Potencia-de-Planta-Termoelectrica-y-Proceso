function [P,T,v,h,hfg,sfg,s] = DatosTablaMezclaSaturadaG(TA5,valor,PoS) %0->Entrop�a  1->Presi�n
TA5 = [1.0 6.97 0.001000 129.19 29.302 2355.2 2384.5 29.303 2484.4 2513.7 0.1059 8.8690 8.9749;
1.5 13.02 0.001001 87.964 54.686 2338.1 2392.8 54.688 2470.1 2524.7 0.1956 8.6314 8.8270;
2.0 17.50 0.001001 66.990 73.431 2325.5 2398.9 73.433 2459.5 2532.9 0.2606 8.4621 8.7227;
2.5 21.08 0.001002 54.242 88.422 2315.4 2403.8 88.424 2451.0 2539.4 0.3118 8.3302 8.6421;
3.0 24.08 0.001003 45.654 100.98 2306.9 2407.9 100.98 2443.9 2544.8 0.3543 8.2222 8.5765;
4.0 28.96 0.001004 34.791 121.39 2293.1 2414.5 121.39 2432.3 2553.7 0.4224 8.0510 8.4734;
5.0 32.87 0.001005 28.185 137.75 2282.1 2419.8 137.75 2423.0 2560.7 0.4762 7.9176 8.3938;
7.5 40.29 0.001008 19.233 168.74 2261.1 2429.8 168.75 2405.3 2574.0 0.5763 7.6738 8.2501;
10 45.81 0.001010 14.670 191.79 2245.4 2437.2 191.81 2392.1 2583.9 0.6492 7.4996 8.1488;
15 53.97 0.001014 10.020 225.93 2222.1 2448.0 225.94 2372.3 2598.3 0.7549 7.2522 8.0071;
20 60.06 0.001017 7.6481 251.40 2204.6 2456.0 251.42 2357.5 2608.9 0.8320 7.0752 7.9073;
25 64.96 0.001020 6.2034 271.93 2190.4 2462.4 271.96 2345.5 2617.5 0.8932 6.9370 7.8302;
30 69.09 0.001022 5.2287 289.24 2178.5 2467.7 289.27 2335.3 2624.6 0.9441 6.8234 7.7675;
40 75.86 0.001026 3.9933 317.58 2158.8 2476.3 317.62 2318.4 2636.1 1.0261 6.6430 7.6691;
50 81.32 0.001030 3.2403 340.49 2142.7 2483.2 340.54 2304.7 2645.2 1.0912 6.5019 7.5931;
75 91.76 0.001037 2.2172 384.36 2111.8 2496.1 384.44 2278.0 2662.4 1.2132 6.2426 7.4558;
100 99.61 0.001043 1.6941 417.40 2088.2 2505.6 417.51 2257.5 2675.0 1.3028 6.0562 7.3589;
101.325 99.97 0.001043 1.6734 418.95 2087.0 2506.0 419.06 2256.5 2675.6 1.3069 6.0476 7.3545;
125 105.97 0.001048 1.3750 444.23 2068.8 2513.0 444.36 2240.6 2684.9 1.3741 5.9100 7.2841;
150 111.35 0.001053 1.1594 466.97 2052.3 2519.2 467.13 2226.0 2693.1 1.4337 5.7894 7.2231;
175 116.04 0.001057 1.0037 486.82 2037.7 2524.5 487.01 2213.1 2700.2 1.4850 5.6865 7.1716;
200 120.21 0.001061 0.88578 504.50 2024.6 2529.1 504.71 2201.6 2706.3 1.5302 5.5968 7.1270;
225 123.97 0.001064 0.79329 520.47 2012.7 2533.2 520.71 2191.0 2711.7 1.5706 5.5171 7.0877;
250 127.41 0.001067 0.71873 535.08 2001.8 2536.8 535.35 2181.2 2716.5 1.6072 5.4453 7.0525;
275 130.58 0.001070 0.65732 548.57 1991.6 2540.1 548.86 2172.0 2720.9 1.6408 5.3800 7.0207;
300 133.52 0.001073 0.60582 561.11 1982.1 2543.2 561.43 2163.5 2724.9 1.6717 5.3200 6.9917;
325 136.27 0.001076 0.56199 572.84 1973.1 2545.9 573.19 2155.4 2728.6 1.7005 5.2645 6.9650;
350 138.86 0.001079 0.52422 583.89 1964.6 2548.5 584.26 2147.7 2732.0 1.7274 5.2128 6.9402;
375 141.30 0.001081 0.49133 594.32 1956.6 2550.9 594.73 2140.4 2735.1 1.7526 5.1645 6.9171;
400 143.61 0.001084 0.46242 604.22 1948.9 2553.1 604.66 2133.4 2738.1 1.7765 5.1191 6.8955;
450 147.90 0.001088 0.41392 622.65 1934.5 2557.1 623.14 2120.3 2743.4 1.8205 5.0356 6.8561;
500 151.83 0.001093 0.37483 639.54 1921.2 2560.7 640.09 2108.0 2748.1 1.8604 4.9603 6.8207;
550 155.46 0.001097 0.34261 655.16 1908.8 2563.9 655.77 2096.6 2752.4 1.8970 4.8916 6.7886;
600 158.83 0.001101 0.31560 669.72 1897.1 2566.8 670.38 2085.8 2756.2 1.9308 4.8285 6.7593;
650 161.98 0.001104 0.29260 683.37 1886.1 2569.4 684.08 2075.5 2759.6 1.9623 4.7699 6.7322;
700 164.95 0.001108 0.27278 696.23 1875.6 2571.8 697.00 2065.8 2762.8 1.9918 4.7153 6.7071;
750 167.75 0.001111 0.25552 708.40 1865.6 2574.0 709.24 2056.4 2765.7 2.0195 4.6642 6.6837;
800 170.41 0.001115 0.24035 719.97 1856.1 2576.0 720.87 2047.5 2768.3 2.0457 4.6160 6.6616;
850 172.94 0.001118 0.22690 731.00 1846.9 2577.9 731.95 2038.8 2770.8 2.0705 4.5705 6.6409;
900 175.35 0.001121 0.21489 741.55 1838.1 2579.6 742.56 2030.5 2773.0 2.0941 4.5273 6.6213;
950 177.66 0.001124 0.20411 751.67 1829.6 2581.3 752.74 2022.4 2775.2 2.1166 4.4862 6.6027;
1000 179.88 0.001127 0.19436 761.39 1821.4 2582.8 762.51 2014.6 2777.1 2.1381 4.4470 6.5850;
1100 184.06 0.001133 0.17745 779.78 1805.7 2585.5 781.03 1999.6 2780.7 2.1785 4.3735 6.5520;
1200 187.96 0.001138 0.16326 796.96 1790.9 2587.8 798.33 1985.4 2783.8 2.2159 4.3058 6.5217;
1300 191.60 0.001144 0.15119 813.10 1776.8 2589.9 814.59 1971.9 2786.5 2.2508 4.2428 6.4936;
1400 195.04 0.001149 0.14078 828.35 1763.4 2591.8 829.96 1958.9 2788.9 2.2835 4.1840 6.4675;
1500 198.29 0.001154 0.13171 842.82 1750.6 2593.4 844.55 1946.4 2791.0 2.3143 4.1287 6.4430;
1750 205.72 0.001166 0.11344 876.12 1720.6 2596.7 878.16 1917.1 2795.2 2.3844 4.0033 6.3877;
2000 212.38 0.001177 0.099587 906.12 1693.0 2599.1 908.47 1889.8 2798.3 2.4467 3.8923 6.3390;
2250 218.41 0.001187 0.088717 933.54 1667.3 2600.9 936.21 1864.3 2800.5 2.5029 3.7926 6.2954;
2500 223.95 0.001197 0.079952 958.87 1643.2 2602.1 961.87 1840.1 2801.9 2.5542 3.7016 6.2558;
3000 233.85 0.001217 0.066667 1004.6 1598.5 2603.2 1008.3 1794.9 2803.2 2.6454 3.5402 6.1856;
3500 242.56 0.001235 0.057061 1045.4 1557.6 2603.0 1049.7 1753.0 2802.7 2.7253 3.3991 6.1244;
4000 250.35 0.001252 0.049779 1082.4 1519.3 2601.7 1087.4 1713.5 2800.8 2.7966 3.2731 6.0696;
5000 263.94 0.001286 0.039448 1148.1 1448.9 2597.0 1154.5 1639.7 2794.2 2.9207 3.0530 5.9737;
6000 275.59 0.001319 0.032449 1205.8 1384.1 2589.9 1213.8 1570.9 2784.6 3.0275 2.8627 5.8902;
7000 285.83 0.001352 0.027378 1258.0 1323.0 2581.0 1267.5 1505.2 2772.6 3.1220 2.6927 5.8148;
8000 295.01 0.001384 0.023525 1306.0 1264.5 2570.5 1317.1 1441.6 2758.7 3.2077 2.5373 5.7450;
9000 303.35 0.001418 0.020489 1350.9 1207.6 2558.5 1363.7 1379.3 2742.9 3.2866 2.3925 5.6791;
10000 311.00 0.001452 0.018028 1393.3 1151.8 2545.2 1407.8 1317.6 2725.5 3.3603 2.2556 5.6159;
11000 318.08 0.001488 0.015988 1433.9 1096.6 2530.4 1450.2 1256.1 2706.3 3.4299 2.1245 5.5544;
12000 324.68 0.001526 0.014264 1473.0 1041.3 2514.3 1491.3 1194.1 2685.4 3.4964 1.9975 5.4939;
13000 330.85 0.001566 0.012781 1511.0 985.5 2496.6 1531.4 1131.3 2662.7 3.5606 1.8730 5.4336;
14000 336.67 0.001610 0.011487 1548.4 928.7 2477.1 1571.0 1067.0 2637.9 3.6232 1.7497 5.3728;
15000 342.16 0.001657 0.010341 1585.5 870.3 2455.7 1610.3 1000.5 2610.8 3.6848 1.6261 5.3108;
16000 347.36 0.001710 0.009312 1622.6 809.4 2432.0 1649.9 931.1 2581.0 3.7461 1.5005 5.2466;
17000 352.29 0.001770 0.008374 1660.2 745.1 2405.4 1690.3 857.4 2547.7 3.8082 1.3709 5.1791;
18000 356.99 0.001840 0.007504 1699.1 675.9 2375.0 1732.2 777.8 2510.0 3.8720 1.2343 5.1064;
19000 361.47 0.001926 0.006677 1740.3 598.9 2339.2 1776.8 689.2 2466.0 3.9396 1.0860 5.0256;
20000 365.75 0.002038 0.005862 1785.8 509.0 2294.8 1826.6 585.5 2412.1 4.0146 0.9164 4.9310;
21000 369.83 0.002207 0.004994 1841.6 391.9 2233.5 1888.0 450.4 2338.4 4.1071 0.7005 4.8076;
22000 373.71 0.002703 0.003644 1951.7 140.8 2092.4 2011.1 161.5 2172.6 4.2942 0.2496 4.5439;
22064 373.95 0.003106 0.003106 2015.7 0 2015.7 2084.3 0 2084.3 4.4070 0 4.4070];
if(PoS == 1) %Es presion
    P=valor;
presionesTA5 = TA5(1:73,1);
[minimo,posicion]=min(abs(P-presionesTA5));
if minimo == 0
    T = TA5(posicion,2);
    v = TA5(posicion,4);
    h = TA5(posicion,10);
    sfg = TA5(posicion,12);
    hfg = TA5(posicion,9);
    s = TA5(posicion,13);
else
    aux = valor-TA5(posicion,1);
    if aux > 0
        T1_1 = TA5(posicion,2);
        T2_1 = TA5(posicion+1,2);
         v1_1 = TA5(posicion,4);
         v2_1 = TA5(posicion+1,4); 
         h1_1 = TA5(posicion,10);
         h2_1 = TA5(posicion+1,10);
         sfg1_1 = TA5(posicion,12);
         sfg2_1 = TA5(posicion+1,12);
         hfg1_1 = TA5(posicion,9);
         hfg2_1 = TA5(posicion+1,9);
         s1_1 = TA5(posicion,13);
         s2_1 = TA5(posicion+1,13); 
         P1_1 = TA5(posicion,1);
         P2_1 = TA5(posicion+1,1);   
%h1 = (((h1_1-h2_1)*(P1-P2_1))/(P1_1-P2_1))+h2_1;
        h = (((h1_1-h2_1)*(P-P2_1))/(P1_1-P2_1))+h2_1;
        v = vpa((((v1_1-v2_1)*(P-P2_1))/(P1_1-P2_1))+v2_1,6);
        s = (((s1_1-s2_1)*(P-P2_1))/(P1_1-P2_1))+s2_1;
        T = (((T1_1-T2_1)*(P-P2_1))/(P1_1-P2_1))+T2_1;
        sfg = (((sfg1_1-sfg2_1)*(P-P2_1))/(P1_1-P2_1))+sfg2_1;
         hfg = (((hfg1_1-hfg2_1)*(P-P2_1))/(P1_1-P2_1))+hfg2_1;
    end
if aux < 0
        T1_1 = TA5(posicion-1,2);
        T2_1 = TA5(posicion,2);
         v1_1 = TA5(posicion-1,4);
         v2_1 = TA5(posicion,4); 
         h1_1 = TA5(posicion-1,10);
         h2_1 = TA5(posicion,10);
         sfg1_1 = TA5(posicion-1,12);
         sfg2_1 = TA5(posicion,12);
         hfg1_1 = TA5(posicion-1,9);
         hfg2_1 = TA5(posicion,9);
         s1_1 = TA5(posicion-1,13);
         s2_1 = TA5(posicion,13); 
         P1_1 = TA5(posicion-1,1);
         P2_1 = TA5(posicion,1);     
         
        h = (((h1_1-h2_1)*(P-P2_1))/(P1_1-P2_1))+h2_1;
        v = vpa((((v1_1-v2_1)*(P-P2_1))/(P1_1-P2_1))+v2_1,6);
        s = (((s1_1-s2_1)*(P-P2_1))/(P1_1-P2_1))+s2_1;
        T = (((T1_1-T2_1)*(P-P2_1))/(P1_1-P2_1))+T2_1;
        sfg = (((sfg1_1-sfg2_1)*(P-P2_1))/(P1_1-P2_1))+sfg2_1;
        hfg = (((hfg1_1-hfg2_1)*(P-P2_1))/(P1_1-P2_1))+hfg2_1;
    end
end
end
if (PoS==0) %Es Entrop�a
    s=valor;
entropiasfTA5 = TA5(1:73,13);
[minimo,posicion]=min(abs(valor-entropiasfTA5));
if minimo == 0
    P = TA5(posicion,1);
    T = TA5(posicion,2);
    v = TA5(posicion,4);
    h = TA5(posicion,10);
    sfg = TA5(posicion,12);
    
else
    aux = valor-TA5(posicion,1);
    if aux > 0
                 T1_1 = TA5(posicion,2);
        T2_1 = TA5(posicion+1,2);
         v1_1 = TA5(posicion,4);
         v2_1 = TA5(posicion+1,4); 
         h1_1 = TA5(posicion,10);
         h2_1 = TA5(posicion+1,10);
         sfg1_1 = TA5(posicion,12);
         sfg2_1 = TA5(posicion+1,12);
         hfg1_1 = TA5(posicion,9);
         hfg2_1 = TA5(posicion+1,9);
         s1_1 = TA5(posicion,13);
         s2_1 = TA5(posicion+1,13); 
         P1_1 = TA5(posicion,1);
         P2_1 = TA5(posicion+1,1);   
%h1 = (((h1_1-h2_1)*(P1-P2_1))/(P1_1-P2_1))+h2_1;
        h = (((h1_1-h2_1)*(s-s2_1))/(s1_1-s2_1))+h2_1;
        v = vpa((((v1_1-v2_1)*(s-s2_1))/(s1_1-s2_1))+v2_1,6);
        P = (((P1_1-P2_1)*(s-s2_1))/(s1_1-s2_1))+P2_1;
        T = (((T1_1-T2_1)*(s-s2_1))/(s1_1-s2_1))+T2_1;
        sfg = (((sfg1_1-sfg2_1)*(P-P2_1))/(P1_1-P2_1))+sfg2_1;
        hfg = (((hfg1_1-hfg2_1)*(P-P2_1))/(P1_1-P2_1))+hfg2_1;
        
    end
    if(aux<0)
         T1_1 = TA5(posicion-1,2);
        T2_1 = TA5(posicion,2);
         v1_1 = TA5(posicion-1,4);
         v2_1 = TA5(posicion,4); 
         h1_1 = TA5(posicion-1,10);
         h2_1 = TA5(posicion,10);
         sfg1_1 = TA5(posicion-1,12);
         sfg2_1 = TA5(posicion,12);
         hfg1_1 = TA5(posicion-1,9);
         hfg2_1 = TA5(posicion,9);
         s1_1 = TA5(posicion-1,13);
         s2_1 = TA5(posicion,13); 
         P1_1 = TA5(posicion-1,1);
         P2_1 = TA5(posicion,1);   
%h1 = (((h1_1-h2_1)*(P1-P2_1))/(P1_1-P2_1))+h2_1;
        h = (((h1_1-h2_1)*(s-s2_1))/(s1_1-s2_1))+h2_1;
        v = vpa((((v1_1-v2_1)*(s-s2_1))/(s1_1-s2_1))+v2_1,6);
        P = (((P1_1-P2_1)*(s-s2_1))/(s1_1-s2_1))+P2_1;
        T = (((T1_1-T2_1)*(s-s2_1))/(s1_1-s2_1))+T2_1;
        sfg = (((sfg1_1-sfg2_1)*(P-P2_1))/(P1_1-P2_1))+sfg2_1;
        hfg = (((hfg1_1-hfg2_1)*(P-P2_1))/(P1_1-P2_1))+hfg2_1;
    end
end

end