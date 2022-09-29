%Tarea 4. Isaí Fomperoza Salgado. 07/09/2018
F=input('Ingresa una funcion','s');
Xa=input('Introduce un valor en x inicial')
Xb=input('Introduce el segundo punto en x')
Tol=input('Ingresa el maximo error permitido')
x=Xa;
Fa=eval(F);
f=eval(F);
x=Xb;
f2=eval(F);
Ea=100;
it=0;
Xrant=0;
if f*f2>0
    disp('No hay raiz o hay mas de una raiz')
    return;
end
while Ea>Tol
    if it==200
        disp('Numero maximo de iteraciones alcanzadas')
        disp(Xr)
        return;
    end
    if Xa+Xb==0
        disp('Hay una division entre cero')
        disp(Xr)
        return;
    end
    Xr=(Xa+Xb)/2;
    x=Xr;
    f=eval(F);
    if Fa*f<=0
        Xb=Xr;
        Fc=f;
    else
        Xa=Xr;
        Fa=f;
    end
    Ea=abs((Xr-Xrant)/Xr)*100;
    Xrant=Xr;
    it=it+1;
end
disp('El error aproximado es:')
disp(Ea)
disp('El resultado es:')
disp (Xr)
disp(it)
 