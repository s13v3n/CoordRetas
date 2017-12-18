program teste;

var
  a, b, c, y1, y2, y, x, x1, x2, aux : real;

begin
  writeln('Entre com o coeficiente a: ');
  Readln(a);
  writeln('Entre com o coeficiente b: ');
  Readln(b);
  writeln('Entre com o coeficiente c: ');
  Readln(c);
  writeln('--------------------------------');
  x1:=(-b + Exp(ln((b*b)-4*a*c) * 0.5 ))/(2*a);
  x2:=(-b - Exp(ln((b*b)-4*a*c) * 0.5 ))/(2*a);
  aux :=-3;
  writeln('Coordenadas de X e Y para locacao da parabola do 2o grau: ');
  if X2>X1 then
    begin
	  x:=aux;

	  while not (x>=x2-aux+1) do
	    begin
	      y:=a*(x*x)+b*x+c;
	      writeln(x:8:2 , ' , ' , y:8:2);
              x:=x+1;
            end;
	end
	else
	  begin
	    x:=-3;
		while not (x>=(x1-aux+1)) do
		  begin
		    y:=a*(x*x)+b*x+c;
		    writeln(x:8:2 ,' , ', y:8:2);
                    x:=x+1;
		  end;
	  end;
readln;
end.
