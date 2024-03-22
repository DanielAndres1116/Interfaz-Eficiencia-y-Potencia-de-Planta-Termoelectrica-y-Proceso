% Rutina del Proyecto de termofluidos (Termodinamica de Yunus-Cengel Versión 8 Ejercicio 10-107)
close all
hold on
%Tablas 
%Valores iniciales (dados en el ejercicio)
%Presiones      Puede variar entre:

%lINEAS DE PRESIONES QUE PUEDEN VARIAR
LP1 = 10;
LP2 = 203;
LP3 = 600;
LP4 = 1000;
LP5 = 15000;

P1 = LP1;         %[1 - 22064]Kpa          
P2 = LP2;       %[1 - 22064]Kpa   
P3 = LP2;       %[1 - 22064]Kpa
P4 = LP5;
P5 = LP5;     
P6 = LP3;
P7 = LP2;
P8 = LP5;
P9 = LP4;
P10 = LP4;
P11 = LP3;
P12 = LP2;
P13 = LP1;

T8 = 600;
T10 = 500;


%Calculo de las entalpías (h)

%h1
TA5 = TablaAguaSaturada;
[P1,T1,v1,h1,s1]=DatosTablaMezclaSaturadaF(TA5,P1,1)%1->Temperatura 0->Entropía

%h2
wb1 = v1*(P2-P1); %[Kj/Kg]
h2 = h1+wb1;
s2 = s1;
T2 = TempLiquidoComprimido(s1);

%h3
[P3,T3,v3,h3,s3]=DatosTablaMezclaSaturadaF(TA5,P3,1);%1->Temperatura 0->Entropía
[P3g,T3g,v3g,h3g,h3fg,s3fg,s3g]=DatosTablaMezclaSaturadaG(TA5,P3,1)

%h4
s4 = s3;
wb2 = v3*(P4-P3);
h4 = h3+wb2;
T4 = TempLiquidoComprimido(s4);

%h6
[P6,T6,v6,h6,s6]=DatosTablaMezclaSaturadaF(TA5,P6,1);
[P6g,T6g,v6g,h6n,h6fg,s6fg,s6g]=DatosTablaMezclaSaturadaG(TA5,P6,1);
%[P,T,v,h,hfg,sfg,s]
%h5
T5=T6
TA7_5 = TablaAguaLiquidaComprimida(P5);
[T5,v5,h5,s5] = DatosTablaLiquidoComprimido(TA7_5,T5,1);
[P5g,T5g,v5g,h5g,h5fg,s5fg,s5g]=DatosTablaMezclaSaturadaG(TA5,P5,1);  %FALTAN LOS F
[P5f,T5f,v5f,h5f,s5f]=DatosTablaMezclaSaturadaF(TA5,P5,1);
T5xf = TempLiquidoComprimido(s5)
%[P,T,v,h,s]
%h7
h7=h6;
TA7_7 = (P7);
[P7,T7,v7,h7,s7] = DatosTablaMezclaSaturadaF(TA5,P7,1);
h7=h6;


[Pxf,Txf,vxf,hxf,sxf] = DatosTablaMezclaSaturadaF(TA5,P9,1);
%[P,T,v,h,s]
[Pxg,Txg,vxg,hxg,sxg,s] = DatosTablaMezclaSaturadaG(TA5,P9,1);
%[P,T,v,h,hfg,sfg,s]
%
% x6 = [sxf sxg s9]
% y6 = [Txf Txg T9]


%h8
TA6_8 = TablasVaporSobrecalentado(P8);
[T8,v8,h8,s8] = DatosTablaVaporSobrecalentado(TA6_8,T8,1);
[P8f,T8f,v8f,h8f,s8f] = DatosTablaMezclaSaturadaF(TA5,P8,1)
[P8g,T8g,v8g,h8g,h8fg,s8fg,s8g] = DatosTablaMezclaSaturadaG(TA5,P8,1)


%h9
s9=s8;
[P9g,T9g,v9g,h9fg,h9g,s9fg,s9g] = DatosTablaMezclaSaturadaG(TA5,P9,1);%0->Entropía  1->Presion
[P9f,T9f,v9f,h9f,s9f] = DatosTablaMezclaSaturadaF(TA5,P9,1);

if(s9>s9g)
TA6_9 = TablasVaporSobrecalentado(P9);
[T9,v9,h9,s9] = DatosTablaVaporSobrecalentado(TA6_9,s9,0);
[P9g,T9g,v9g,h9fg,h9g,s9fg,s9g] = DatosTablaMezclaSaturadaG(TA5,P9,1);%0->Entropía  1->Presion
[P9f,T9f,v9f,h9f,s9f] = DatosTablaMezclaSaturadaF(TA5,P9,1);
else
x = (s9-s9f)/s9fg;
h9 = x*h9fg+h9f;
s9 = x*s9fg+s9f;

%[P9g,T9g,v9g,h9g,h9g,s9g,s9g] = DatosTablaMezclaSaturadaG(TA5,P9,1);%0->Entropía  1->Presion
%[P9f,T9f,v9f,h9f,s9f] = DatosTablaMezclaSaturadaF(TA5,P9,1);
T9 =T9f; 
end

%h10
TA6_10=TablasVaporSobrecalentado(P10);
[T10,v10,h10,s10] = DatosTablaVaporSobrecalentado(TA6_10,T10,1);

%h11
s11=s10;
[PauxG2,TauxG2,vauxG2,hauxG2,hauxFG2,sauxFG2,sauxG2] = DatosTablaMezclaSaturadaG(TA5,P11,1);%0->Entropía  1->Presion
[PauxF2,TauxF2,vauxF2,hauxF2,sauxF2] = DatosTablaMezclaSaturadaF(TA5,P11,1);
if(s11>sauxG2)
TA6_11 = TablasVaporSobrecalentado(P11);
[T11,v11,h11,s11] = DatosTablaVaporSobrecalentado(TA6_11,s11,0);
[P11g,T11g,v11g,h11g,h11g,s11g,s11g] = DatosTablaMezclaSaturadaG(TA5,P11,1);%0->Entropía  1->Presion
[P11f,T11f,v11f,h11f,s11f] = DatosTablaMezclaSaturadaF(TA5,P11,1);
else
x = (s11-sauxF2)/sauxFG2;
h11 = x*hauxFG2+hauxF2;
%[P11g,T11g,v11g,h11g,h11g,s11g,s11g] = DatosTablaMezclaSaturadaG(TA5,P11,1);%0->Entropía  1->Presion
%[P11f,T11f,v11f,h11f,s11f] = DatosTablaMezclaSaturadaF(TA5,P11,1);
end

%h12
s12=s11

[PauxG3,TauxG3,vauxG3,hauxG3,hauxFG3,sauxFG3,sauxG3] = DatosTablaMezclaSaturadaG(TA5,P12,1);%0->Entropía  1->Presion
[PauxF3,TauxF3,vauxF3,hauxF3,sauxF3] = DatosTablaMezclaSaturadaF(TA5,P12,1);
if(s11>sauxG3)
TA6_12=TablasVaporSobrecalentado(P12);
[T12,v12,h12,s12] = DatosTablaVaporSobrecalentado(TA6_12,s12,0);
[P12g,T12g,v12g,h12fg,h12g,s12fg,s12g] = DatosTablaMezclaSaturadaG(TA5,P12,1);%0->Entropía  1->Presion
[P12f,T12f,v12f,h12f,s12f] = DatosTablaMezclaSaturadaF(TA5,P12,1);
%T12 = 300
else
    x=(s12-sauxF3)/sauxFG3;
    h12 = x*hauxFG3+hauxF3;
    %[P12g,T12g,v12g,h12g,h12g,s12g,s12g] = DatosTablaMezclaSaturadaG(TA5,P12,1);%0->Entropía  1->Presion
%[P12f,T12f,v12f,h12f,s12f] = DatosTablaMezclaSaturadaF(TA5,P12,1);
end

%h13
s13=s12
[PauxG4,TauxG4,vauxG4,hauxG4,hauxFG4,sauxFG4,sauxG4] = DatosTablaMezclaSaturadaG(TA5,P13,1);%0->Entropía  1->Presion
[PauxF4,TauxF4,vauxF4,hauxF4,sauxF4] = DatosTablaMezclaSaturadaF(TA5,P13,1);
if(s13<sauxG4)

        x=(s13-sauxF4)/sauxFG4;
    h13 = x*hauxFG4+hauxF4;
    T13=T1;
    [P13g,T13g,v13g,h13fg,h13g,s13fg,s13g] = DatosTablaMezclaSaturadaG(TA5,P13,1);%0->Entropía  1->Presion
[P13f,T13f,v13f,h13f,s13f] = DatosTablaMezclaSaturadaF(TA5,P13,1);
else
TA6_13=TablasVaporSobrecalentado(P13);
[T13,v13,h13,s13] = DatosTablaVaporSobrecalentado(TA6_13,s13,0);
[P13g,T13g,v13g,h13fg,h13g,s13fg,s13g] = DatosTablaMezclaSaturadaG(TA5,P13,1);%0->Entropía  1->Presion
[P13f,T13f,v13f,h13f,s13f] = DatosTablaMezclaSaturadaF(TA5,P13,1);
end

%Fracciones de vapor

EntalpiasH = [h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13]

YY = (h5-h4)/(h11-h6);
ZZ = (h3-h2+YY*(h2-h7))/(h12-h2);

qin = (h8-h5)+(h10-h9);
qout= (1-YY-ZZ)*(h13-h1);
Eficiencia = 1-(qout/qin)
Wneto = qin-qout;
Potencia = Wneto*42

hold on

x = [s1 s2 s3 s4 s5 s5f s5g s8 s9 s10 s11 s12 s13];
y = [T1 T2 T3 T4 T5 T5f T5g T8 T9 T10 T11 T12 T13];

x1 = [s1 s13g s13];
y1 = [T1 T1 T13];
x2 = [s2 s3 s3g s12];
y2 = [T2 T3 T3 T12];
x5 = [s4 s5 s8f s5g s8g s8];
 y5  = [T4 T5 T8f T5g T8g T8];
 
x3 = [s6 s6g s11];
y3 = [T6 T6 T11];

x6 = [s9f s9g s9 s10];
y6 = [T9f T9g T9 T10];



%Para el gráfico de la campana
X_sf = [0.1059	0.1956 	0.2606 	0.3118 	0.3543	0.4224 	0.4762 	0.5763 	0.6492 	0.7549	0.8320 	0.8932 	0.9441 	1.0261	1.0912	1.2132	1.3028	1.3069	1.3741	1.4337	1.485	1.5302	1.5706	1.6072	1.6408	1.6717	1.7005	1.7274	1.7526	1.7765	1.8205	1.8604	1.897	1.9308	1.9623	1.9918	2.0195	2.0457	2.0705	2.0941	2.1166	2.1381	2.1785	2.2159	2.2508	2.2835	2.3143	2.3844	2.4467	2.5029	2.5542	2.6454	2.7253	2.7966	2.9207	3.0275	3.122	3.2077	3.2866	3.3603	3.4299	3.4964	3.5606	3.6232	3.6848	3.7461	3.8082	3.872	3.9396	4.0146	4.1071	4.2942	4.407];
Y_T = [6.97 	13.02 	17.50 	21.08 	24.08 	28.96 	32.87 	40.29 	45.81 	53.97 	60.06 	64.96 	69.09 	75.86 	81.32 	91.76 	99.61 	99.97 	105.97	111.35 	116.04 	120.21 	123.97 	127.41	130.58	133.52 	136.27 	138.86	141.30 	143.61 	147.90 	151.83 	155.46 	158.83 	161.98 	164.95 	167.75 	170.41	172.94 	175.35 	177.66 	179.88 	184.06 	187.96 	191.60 	195.04 	198.29 	205.72 	212.38	218.41 	223.95 	233.85 	242.56 	250.35 	263.94	275.59 	285.83 	295.01 	303.35 	311.00 	318.08 	324.68 	330.85	336.67 	342.16 	347.36 	352.29	356.99 	361.47 	365.75 	369.83 	373.71 373.95];
X_sg = [8.9749	8.8270	8.7227	8.6421	8.5765	8.4734	8.3938	8.2501	8.1488	8.0071	7.9073	7.8302	7.7675	7.6691	7.5931	7.4558	7.3589	7.3545	7.2841	7.2231	7.1716	7.1270	7.0877	7.0525	7.0207	6.9917	6.9650	6.9402	6.9171	6.8955	6.8561	6.8207	6.7886	6.7593	6.7322	6.7071	6.6837	6.6616	6.6409	6.6213	6.6027	6.5850	6.5520	6.5217	6.4936	6.4675	6.4430	6.3877	6.3390	6.2954	6.2558	6.1856	6.1244	6.0696	5.9737	5.8902	5.8148	5.7450	5.6791	5.6159	5.5544	5.4939	5.4336	5.3728	5.3108	5.2466	5.1791	5.1064	5.0256	4.9310	4.8076	4.5439	4.4070];
plot(X_sf, Y_T, 'r');
plot(X_sg, Y_T, 'r');
plot(x,y,'go');
plot(x,y,'b');
plot(x1,y1,'b');
plot(x2,y2,'b');
plot(x3,y3,'b');
%plot(x4,y4,'b');
plot(x5,y5,'b');
plot(x6,y6,'b');
%plot(x3,y3,'b');


grid on
hold on
