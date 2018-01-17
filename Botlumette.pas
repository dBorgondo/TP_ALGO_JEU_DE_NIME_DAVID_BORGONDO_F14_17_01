PROGRAM Allumette;

USES crt;

CONST
	allumettes_ini=21;

VAR
	Allumettes,Prise: integer;
	piece: boolean;

BEGIN
	randomize;
	Allumettes:=allumettes_ini;
	piece:=((random(2))=1);
	writeln('Face vous commencez, pile Botlumette commence.');
	writeln('Appuyer sur une touche pour lancer la piece.');
	readkey();
	if piece then writeln('Face, vous commencez.') else writeln('Pile, Botlumette commence.');
	readkey();
	repeat
		BEGIN
			clrscr;
			if piece then
			BEGIN
				writeln('Joueur 1 à vous');
				writeln('Il reste ',Allumettes,' Allumettes, combien voulez vous en prendre ?');
				readln(Prise);
			END;
				if ((((Prise>0) and (Prise<4)) and (Prise<Allumettes)) or (not(piece))) then
				BEGIN
					Allumettes:=Allumettes-Prise;
					if Allumettes=1 then writeln('Le Joueur gagne.') ELSE
					BEGIN
						writeln('Il reste donc ',Allumettes,' allumettes.');
						piece:=true;
						readln();
						clrscr;
						writeln('Tour de Botlumette');
						Prise:=((Allumettes-1) MOD 4);
						if Prise=0 then Prise:=1;
						Allumettes:=Allumettes-Prise;
						writeln('Botlumette prends ', Prise,' Allumettes.');
						readln();
						if Allumettes=1 then writeln('Botlumette gagne.');
					END;
				END;
		END;
	until Allumettes=1;
	readln();
END.
