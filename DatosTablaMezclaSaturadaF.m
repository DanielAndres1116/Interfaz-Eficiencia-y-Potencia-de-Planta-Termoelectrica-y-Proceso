function [P,T,v,h,s] = DatosTablaMezclaSaturadaF(TA5,valor,PoS)%En el primer dato se agrega la tabla que se necesite, en el segundo el valor con el que se desea interpolar sea presion o entropia - en el 3er dato se pone:%0->Entropía  1->Temperatura (dependiendo de con qué se interpole)
if(PoS == 1) %Es Presión
    P=valor;
presionesTA5 = TA5(1:73,1);
[minimo,posicion]=min(abs(P-presionesTA5));
if minimo == 0
    T = TA5(posicion,2);
    v = TA5(posicion,3);
    h = TA5(posicion,8);
    s = TA5(posicion,11);
else
    aux = valor-TA5(posicion,1);
    if aux > 0
        T1_1 = TA5(posicion,2);
        T2_1 = TA5(posicion+1,2);
         v1_1 = TA5(posicion,3);
         v2_1 = TA5(posicion+1,3); 
         h1_1 = TA5(posicion,8);
         h2_1 = TA5(posicion+1,8);
         s1_1 = TA5(posicion,11);
         s2_1 = TA5(posicion+1,11); 
         P1_1 = TA5(posicion,1);
         P2_1 = TA5(posicion+1,1);   
%h1 = (((h1_1-h2_1)*(P1-P2_1))/(P1_1-P2_1))+h2_1;
        h = (((h1_1-h2_1)*(P-P2_1))/(P1_1-P2_1))+h2_1;
        v = vpa((((v1_1-v2_1)*(P-P2_1))/(P1_1-P2_1))+v2_1,6);
        s = (((s1_1-s2_1)*(P-P2_1))/(P1_1-P2_1))+s2_1;
        T = (((T1_1-T2_1)*(P-P2_1))/(P1_1-P2_1))+T2_1;
        
        
    end
if aux < 0
        T1_1 = TA5(posicion-1,2);
        T2_1 = TA5(posicion,2);
         v1_1 = TA5(posicion-1,3);
         v2_1 = TA5(posicion,3); 
         h1_1 = TA5(posicion-1,8);
         h2_1 = TA5(posicion,8);
         s1_1 = TA5(posicion-1,11);
         s2_1 = TA5(posicion,11); 
         P1_1 = TA5(posicion-1,1);
         P2_1 = TA5(posicion,1);     
         
        h = (((h1_1-h2_1)*(P-P2_1))/(P1_1-P2_1))+h2_1;
        v = vpa((((v1_1-v2_1)*(P-P2_1))/(P1_1-P2_1))+v2_1,6);
        s = (((s1_1-s2_1)*(P-P2_1))/(P1_1-P2_1))+s2_1;
        T = (((T1_1-T2_1)*(P-P2_1))/(P1_1-P2_1))+T2_1;
        
    end
end
end
if (PoS==0) %Es Entropía
    s=valor;
entropiasfTA5 = TA5(1:73,11);
[minimo,posicion]=min(abs(valor-entropiasfTA5));
if minimo == 0
    P = TA5(posicion,1);
    T = TA5(posicion,2);
    v = TA5(posicion,3);
    h = TA5(posicion,8);
else
    aux = valor-TA5(posicion,1);
    if aux > 0
                 T1_1 = TA5(posicion,2);
        T2_1 = TA5(posicion+1,2);
         v1_1 = TA5(posicion,3);
         v2_1 = TA5(posicion+1,3); 
         h1_1 = TA5(posicion,8);
         h2_1 = TA5(posicion+1,8);
         s1_1 = TA5(posicion,11);
         s2_1 = TA5(posicion+1,11); 
         P1_1 = TA5(posicion,1);
         P2_1 = TA5(posicion+1,1);   
%h1 = (((h1_1-h2_1)*(P1-P2_1))/(P1_1-P2_1))+h2_1;
        h = (((h1_1-h2_1)*(s-s2_1))/(s1_1-s2_1))+h2_1;
        v = vpa((((v1_1-v2_1)*(s-s2_1))/(s1_1-s2_1))+v2_1,6);
        P = (((P1_1-P2_1)*(s-s2_1))/(s1_1-s2_1))+P2_1;
        T = (((T1_1-T2_1)*(s-s2_1))/(s1_1-s2_1))+T2_1;
        
        
    end
         T1_1 = TA5(posicion-1,2);
        T2_1 = TA5(posicion,2);
         v1_1 = TA5(posicion-1,3);
         v2_1 = TA5(posicion,3); 
         h1_1 = TA5(posicion-1,8);
         h2_1 = TA5(posicion,8);
         s1_1 = TA5(posicion-1,11);
         s2_1 = TA5(posicion,11); 
         P1_1 = TA5(posicion-1,1);
         P2_1 = TA5(posicion,1);   
%h1 = (((h1_1-h2_1)*(P1-P2_1))/(P1_1-P2_1))+h2_1;
        h = (((h1_1-h2_1)*(s-s2_1))/(s1_1-s2_1))+h2_1;
        v = vpa((((v1_1-v2_1)*(s-s2_1))/(s1_1-s2_1))+v2_1,6);
        P = (((P1_1-P2_1)*(s-s2_1))/(s1_1-s2_1))+P2_1;
        T = (((T1_1-T2_1)*(s-s2_1))/(s1_1-s2_1))+T2_1;
        
    end
end


end