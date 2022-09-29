a=0;
b=0;
d=0;
for a=1:1:3
   for b=1:1:3
     fprintf('Ingresa a(%d,%d)',a,b);  
  R(a,b)=input('\');  
   end
end
disp('Tu matriz es:');
disp(R);
disp('Ingresa tu vector solucion');
 for a=1:3
  fprintf('Ingresa la solucion 1, %d = ',a);  
  f(1,a)=input('\');
 end
 fprintf('El vector solucion es \n')
 disp(f')
 %---------------------------------------------
 detgen=det(R);
 disp('La determinante general es:');
 disp(detgen);
C = R; 
G = f'; 

conta=1;
while(conta<=3)
    
    C(:,conta)= G; %Cambio de columnas segun el contador
    
    solu(conta) = det(C)/detgen; 
    
    disp('El resultado es');
    fprintf('x%d= %.5f \n',conta,solu(conta));  
    C = R;
    
    conta=conta+1;
    end 

