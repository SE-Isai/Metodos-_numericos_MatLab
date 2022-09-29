F=input('Ingresa una funcion','s');
FDE=input('Ingresa la derivada de la funcion','s');
Xa=input('Introduce el valor en x inicial')
Tole=input('Introduce la tolerancia de error');
x=Xa;
fev=eval(F);
fde=eval(FDE);
Ea=100;
it=1;
while(Ea>Tole)
    if it==200
        disp('Numero maximo de iteraciones alcanzado');
        disp('La raiz aproximada es:');
disp(Xa);
disp('El error aproximado es:');
disp(Ea);
    end
    x=Xa;
fde=eval(FDE);
fev=eval(F);
    ant=Xa;
    Xa=Xa-(fev/fde);
    Ea=((abs(Xa-ant))/Xa)*100;
    it=it+1;
    x=ant;
    fant=eval(F);
    if Xa==inf
        disp('Convergencia lenta o divergencia');
        return;
       if Xa==-inf
        disp('Convergencia lenta o divergencia');
        return; 
       end
    end
end
disp('La raiz es:');
disp(Xa);
disp('El error aproximado es:');
disp(Ea);
disp('El numero de iteraciones es:');
disp(it);