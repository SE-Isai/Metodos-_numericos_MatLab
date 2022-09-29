F=input('Ingresa una funcion','s');
Xa=input('Introduce el valor en x inicial')
Xb=input('Introduce el valor en x segundo')
Tole=input('Introduce la tolerancia de error');
Ea=100;
it=1;
while Ea>Tole
    if it==200
        disp('Numero maximo de iteraciones alcanzado');
        disp('La raiz aproximada es:');
disp(Xan);
disp('El error aproximado es:');
disp(Ea);
    end
    x=Xa;
    fa=eval(F);
    x=Xb;
    fb=eval(F);
    Xan=Xb-(((fb)*(Xa-Xb))/(fa-fb));
    Xa=Xb;
    Xb=Xan;
    Ea=((abs(Xa-Xan))/Xa)*100;
    it=it+1;
    if Xb>200
        disp("Convergencia lenta o divergencia");
        return;
    end
end
disp('La raiz es:');
disp(Xan);
disp('El error aproximado es:');
disp(Ea);
disp('El numero de iteraciones es:');
disp(it);
