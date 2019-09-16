clc
clear
fprintf('Press 1 for TRAPEZOIDAL RULE\nPress 2 for SAMPSON 1-3 RULE\nPress 3 for SAMPSON 3-8 RULE\nPress 4 for TAYLORS SERIES METHOD\n ');
choice=input('Enter your choice: ');

switch(choice)
case 1
   x(1)=input('Lower limit: ');
   y(1)=input('Upper limit: ');
   n=input('Numbers of Ittereation: ');

        h=(y(1)-x(1))/n;
        for k=1:1:n
            x(1)=1;
            y(1)=log10(x(1));
            x(k+1)=h+x(1);
            y(k+1)=log10(x(k+1));
        end
        ans=h/2*((y(1)+y(9))+(y(1)+y(2)+y(3)+y(4)+y(5)+y(6)+y(7)+y(8)));
        table=[   x'     y'];
        disp(table);
        disp('Answer is: ');
        disp(ans);
        

case 2
     x(1)=input('[lower limit: ');
        y(1)=input('[upper limit: ');
        n=input('itteration : ');
        h=(y(1)-x(1))/n;
        for k=1:1:n
            x(1)=1;
            y(1)=log10(x(1));
            x(k+1)=h+x(1);
            y(k+1)=log10(x(k+1));
        end
        ans=h/3*((y(1)+y(9))+4*(y(2)+y(4)+y(6)+y(8))+2*(y(1)+y(3)+y(5)+y(7)));
        table=[   x'     y'];
        disp(table);
        disp('Answer is: ');
        disp(ans);
        
    case 3
         x(1)=input('Lower limit: ');
       y(1)=input('Upper limit: ');
       n=input('Numbers of Ittereation: ');

       h=(y(1)-x(1))/n;
       for k=1:1:n
           x(1)=1;
           y(1)=log10(x(1));
           x(k+1)=h+x(1);
           y(k+1)=log10(x(k+1));
       end
       ans=3*h/8*((y(1)+y(9))+3*(y(1)+y(2)+y(3)+y(4)+y(5)+y(6)+y(7)+y(8)));
       table=[   x'     y'];
       disp(table);
       disp('Answer is: ');
       disp(ans);
        
    case 4
        x(1)=input('the value of x1: ');
        y(1)=input('the value of y1: ');
         n=input('Numbers of Ittereation: ');

        h=0.1;
        y(2)=x(1)+y(1);
        for k=2:1:n
            y(1)=0;
            y(2)=x(1)+y(1);
            y(k+1)=x(1)+y(k);
        end
        disp(y);
        ans=y(1)+h/factorial(1)*y(2)+h^2/factorial(2)*y(3)+h^3/factorial(3)*y(4)+h^4/factorial(4)*y(5);
        fprintf('Answer is %0.5f: ',ans);
end
        

        
                
       
        
        
        
        