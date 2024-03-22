function [T,v,h,s] = DatosTablaVaporSobrecalentado(TA6,valor,ToS) %ToS En el primer dato se agrega la tabla - En el 2do dato se agrega el valor, sea de temperatura o de entropía - (En el 3er dato se pone 1 si se interpola a partir de un dato de temperatura y 0 si es a partir de la entropia)

if(ToS==1) %Es Temperatura
    T=valor;
TemperaturasTA6 = TA6(1:15,1);
[minimo,posicion]=min(abs(T-TemperaturasTA6));
if minimo == 0
    v = TA6(posicion,2);
    h = TA6(posicion,4);
    s = TA6(posicion,5);
else
    aux = valor-TA6(posicion,1);
    if aux > 0
        T1_1 = TA6(posicion,1);
        T2_1 = TA6(posicion+1,1);
         v1_1 = TA6(posicion,2);
         v2_1 = TA6(posicion+1,2); 
         h1_1 = TA6(posicion,4);
         h2_1 = TA6(posicion+1,4);
         s1_1 = TA6(posicion,5);
         s2_1 = TA6(posicion+1,5);           
%h1 = (((h1_1-h2_1)*(P1-P2_1))/(P1_1-P2_1))+h2_1;
        h = (((h1_1-h2_1)*(T-T2_1))/(T1_1-T2_1))+h2_1;
        v = vpa((((v1_1-v2_1)*(T-T2_1))/(T1_1-T2_1))+v2_1,6);
        s = (((s1_1-s2_1)*(T-T2_1))/(T1_1-T2_1))+s2_1;
        
        
    end
if aux < 0
         T1_1 = TA6(posicion-1,1);
        T2_1 = TA6(posicion,1);
         v1_1 = TA6(posicion-1,2);
         v2_1 = TA6(posicion,2); 
         h1_1 = TA6(posicion-1,4);
         h2_1 = TA6(posicion,4);
         s1_1 = TA6(posicion-1,5);
         s2_1 = TA6(posicion,5);           
         
        h = (((h1_1-h2_1)*(T-T2_1))/(T1_1-T2_1))+h2_1;
        v = vpa((((v1_1-v2_1)*(T-T2_1))/(T1_1-T2_1))+v2_1,6);
        s = (((s1_1-s2_1)*(T-T2_1))/(T1_1-T2_1))+s2_1;
        
    end
end
end
if (ToS==0) %Es Entropía
    s=valor;
entropiasTA6 = TA6(1:15,5);
[minimo,posicion]=min(abs(valor-entropiasTA6));
if minimo == 0
    v = TA6(posicion,2);
    h = TA6(posicion,4);
    T = TA6(posicion,1);
else
    aux = valor-TA6(posicion,1);
    if aux > 0
         v1_1 = TA6(posicion,2);
         v2_1 = TA6(posicion+1,2);
         h1_1 = TA6(posicion,4);
         h2_1 = TA6(posicion+1,4);
         s1_1 = TA6(posicion,5);
         s2_1 = TA6(posicion+1,5); 
         T1_1 = TA6(posicion,1);
         T2_1 = TA6(posicion+1,1); 
                 %h1 = (((h1_1-h2_1)*(P1-P2_1))/(P1_1-P2_1))+h2_1;
        h = (((h1_1-h2_1)*(s-s2_1))/(s1_1-s2_1))+h2_1;
        v = vpa((((v1_1-v2_1)*(s-s2_1))/(s1_1-s2_1))+v2_1,6);
        T = (((T1_1-T2_1)*(s-s2_1))/(s1_1-s2_1))+T2_1;
        
        
    end
if aux < 0
         v1_1 = TA6(posicion-1,2);
         v2_1 = TA6(posicion,2); 
         h1_1 = TA6(posicion-1,4);
         h2_1 = TA6(posicion,4);
         s1_1 = TA6(posicion-1,5);
         s2_1 = TA6(posicion,5); 
         T1_1 = TA6(posicion-1,1);
         T2_1 = TA6(posicion,1);           
         
        h = (((h1_1-h2_1)*(s-s2_1))/(s1_1-s2_1))+h2_1;
        v = vpa((((v1_1-v2_1)*(s-s2_1))/(s1_1-s2_1))+v2_1,6);
        T = (((T1_1-T2_1)*(s-s2_1))/(s1_1-s2_1))+T2_1;
end
end
end
end