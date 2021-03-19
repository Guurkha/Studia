wlasciciel(0, chomik).
wlasciciel(1, papuga).
wlasciciel(2, kanarek).
wlasciciel(3, pies).
wlasciciel(4, kot).
wlasciciel(5, rybki).
wlasciciel(6, waz).
 
przyjaciele() :-
        L0 = [0,1,2,3,4,5,6],
        select(PietroJarek, L0, L1), wlasciciel(PietroJarek, ZwierzJarek),
        select(PietroMarcin, L1, L2), wlasciciel(PietroMarcin, ZwierzMarcin),
        select(PietroAlbert, L2, L3), wlasciciel(PietroAlbert, ZwierzAlbert),
        select(PietroRobert, L3, L4), wlasciciel(PietroRobert, ZwierzRobert),
        select(PietroStefan, L4, L5), wlasciciel(PietroStefan, ZwierzStefan),
        select(PietroSzymon, L5, L6), wlasciciel(PietroSzymon, ZwierzSzymon),
        select(PietroFranek, L6, L7), wlasciciel(PietroFranek, ZwierzFranek),
 
        PietroJarek < PietroStefan, PietroJarek < PietroRobert, PietroJarek < PietroFranek,
        PietroMarcin > PietroJarek,
        PietroAlbert < PietroSzymon, PietroAlbert < PietroStefan, PietroAlbert < PietroMarcin, PietroAlbert < PietroFranek, PietroAlbert > PietroJarek,
        PietroRobert < PietroMarcin, PietroRobert > PietroStefan, PietroRobert > PietroFranek, PietroRobert > PietroAlbert,
        PietroStefan > PietroFranek, PietroStefan < PietroMarcin, PietroStefan < PietroSzymon,
        PietroSzymon > PietroJarek, PietroSzymon > PietroMarcin, PietroSzymon > PietroFranek, PietroSzymon > PietroRobert,
        PietroFranek < PietroMarcin, nl,
        write('Jarek '), write(PietroJarek), write(' '), write(ZwierzJarek), nl,
        write('Marcin '), write(PietroMarcin), write(' '), write(ZwierzMarcin), nl,
        write('Albert '), write(PietroAlbert), write(' '), write(ZwierzAlbert), nl,
        write('Robert '), write(PietroRobert), write(' '), write(ZwierzRobert), nl,
        write('Stefan '), write(PietroStefan), write(' '), write(ZwierzStefan), nl,
        write('Szymon '), write(PietroSzymon), write(' '), write(ZwierzSzymon), nl,
        write('Franek '), write(PietroFranek), write(' '), write(ZwierzFranek).
