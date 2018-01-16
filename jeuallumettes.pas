PROGRAM jeuallumettes;

USES crt;

CONST
	total=21;
	piochemin=1;
	piochemax=3;

VAR
	pioche, reste: INTEGER;
	fin: BOOLEAN;

BEGIN
	clrscr;

	pioche:=0;
	reste:=total;
	fin:=FALSE;

	writeln('Voici le jeu des allumettes : a tour de role, tirez 1,2 ou 3 allumettes du tas. Il y a 21 allumettes au total, et celui qui tire la derniere a perdu. Bon jeu.');

	REPEAT

		writeln('Combien d allumettes tirez vous ?');
		readln(pioche);

		IF (pioche>=piochemin) AND (pioche<=piochemax) THEN
			begin
			IF (pioche=piochemax) AND (reste=piochemax) OR (pioche=piochemax) AND (reste=piochemax-1) OR (pioche=piochemax-1) AND (reste=piochemax-1) THEN
				begin	
				writeln('il reste: ',reste,' allumettes');
				writeln('vous ne pouvez pas prendre ',pioche,' allumettes');
				end
				ELSE
				begin
				reste:=reste-pioche;
				writeln('il reste ',reste,' allumettes');
				end;
			end
		ELSE
			begin
			writeln('Erreur : tour invalide. Vous devez tirer 1,2 ou 3 allumettes, ni plus, ni moins. Veuillez recommencer.');
			end;

		IF reste=1 THEN
			fin:=TRUE;

		
	UNTIL fin=TRUE;

	IF fin=TRUE THEN
		writeln('Le dernier joueur a avoir tire remporte la victoire. Felicitations !');

readkey;

END.