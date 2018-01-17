PROGRAM Allumette;

USES crt;

CONST
	allumettes_ini=21;
VAR
	Allumettes,Prise : integer;
	tour1: boolean;

BEGIN
	Allumettes:=allumettes_ini;
	Prise:=0;
	repeat
			BEGIN
			clrscr;
			writeln('Joueur 1 à vous');
			writeln('Il reste ',Allumettes,' Allumettes, combien voulez vous en prendre ?');
			repeat readln(Prise) until (((Prise>0) and (Prise<4)) and (Prise<Allumettes));
			Allumettes:=Allumettes-Prise;
			if Allumettes=1 then writeln('Le joueur 1 a gagne') ELSE writeln('Il rest donc ',Allumettes,' allumettes.');
			if Allumettes>=2 then
			BEGIN
				clrscr;
				writeln('Joueur 2 à vous');
				writeln('Il reste ',Allumettes,' Allumettes, combien voulez vous en prendre ?');
				repeat readln(Prise) until (((Prise>0) and (Prise<4)) and (Prise<Allumettes));
				Allumettes:=Allumettes-Prise;
				if Allumettes=1 then writeln('Le joueur 2 a gagne') ELSE writeln('Il rest donc ',Allumettes,' allumettes.');
			END;
		END;
	until Allumettes=1;
	readln();
END.
