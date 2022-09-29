F=input('Ingresa una funcion','s');
Xa=input('Introduce un valor en x')
Tole=input('Introduce la tolerancia de error')
Ea=100;
it=1;
ant=0;
while(Ea>Tole)
    x=Xa;
fa=eval(F);
Xa=fa
 Ea=((abs(Xa-ant))/Xa)*100
 it=it+1;
 ant=Xa;
end
disp('Iteraciones:')
disp(it);
disp('El error aproximado es de')
disp(Ea);
disp('La raiz es');
disp(Xa);