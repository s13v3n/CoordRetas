{$A+,B-,D+,E+,F-,G-,I+,L+,N-,O-,P-,Q-,R-,S+,T-,V+,X+,Y+}
{$M 16384,0,655360}
{$A+,B-,D+,E+,F-,G-,I+,L+,N-,O-,P-,Q-,R-,S+,T-,V+,X+,Y+}
{$M 16384,0,655360}
program testecalc;

var
  X, Y, Xa, Xb, Ya, Yb : real;
  Yaux, Yaux0, Yaux1, Xaux, Xaux0, Xaux1 : real;
begin
  writeln('Entre com o valor de X do ponto inicial: ');
  readln(Xa);
  writeln('Entre com o valor de Y do ponto inicial: ');
  readln(Ya);
  writeln('Entre com o valor de X do ponto final: ');
  readln(Xb);
  writeln('Entre com o valor de Y do ponto final: ');
  readln(Yb);
  if Xa > Xb then
    begin
      Xaux:=Xa-Xb;
      Xaux0:=Xb;
      Xaux1:=Xa;
    end
    else
      begin
        Xaux:=Xb-Xa;
        Xaux0 := Xa;
        Xaux1 := Xb;
      end;

  if Ya > Yb then
    begin
      Yaux:=Ya-Yb;
      Yaux0:=Yb;
      Yaux1:=Ya;
    end
    else
      begin
        Yaux:=Yb-Ya;
        Yaux0 := Ya;
        Yaux1 := Yb;
      end;
    Y:=Yaux0;
    X:=Xaux0;
    writeln( Xa:8:0 , ' , ' , Ya:8:0);

    if ((Xaux1-Xaux0)<(Yaux1-Yaux0)) then
      begin
        while not (Y >= Yaux1) do
          begin
            X:=(-Y*Xb-Xa*Yb+Ya*Xb+Y*Xa)/(Ya-Yb);
            Y:= Y+1;
            writeln( X:8:0 , ' , ' , Y:8:0 );
          end;
      end
        else
          begin
            while not (X >= Xaux1) do
              begin
                Y:=(-X*Ya-Xa*Yb+Ya*Xb+Yb*X)/(-Xa+Xb);
                X:= X+1;
                writeln( X:8:0 , ' , ' , Y:8:0 );
              end;
    end;
    readln;
end.
