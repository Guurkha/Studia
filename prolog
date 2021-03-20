

```
wlasciciel(0, chomik).
wlasciciel(1, kanarek).
wlasciciel(2, kot).
wlasciciel(3, waz).
wlasciciel(4, papuga).
wlasciciel(5, rybka).
wlasciciel(6, pies).
 
rozwiazanie() :-
        L0 = [0,1,2,3,4,5,6],
        select(PietroJarek, L0, L1), 
        select(PietroMarcin, L1, L2), 
        select(PietroAlbert, L2, L3), 
        select(PietroRobert, L3, L4), 
        select(PietroStefan, L4, L5), 
        select(PietroSzymon, L5, L6), 
        select(PietroFranek, L6, _), 
 
        PietroJarek > PietroSzymon, PietroJarek > PietroStefan, PietroJarek > PietroMarcin, PietroJarek > PietroFranek, PietroJarek > PietroRobert,
        PietroMarcin > PietroFranek, PietroMarcin < PietroAlbert, PietroMarcin > PietroRobert,
        PietroAlbert > PietroJarek, PietroAlbert > PietroStefan, PietroAlbert > PietroSzymon, PietroAlbert > PietroFranek,
        PietroRobert < PietroAlbert, PietroRobert < PietroStefan, PietroRobert < PietroFranek,
        PietroStefan < PietroMarcin, PietroStefan < PietroFranek,
        PietroSzymon > PietroStefan, PietroSzymon > PietroFranek, PietroSzymon > PietroMarcin, PietroSzymon > PietroRobert, nl,

        wlasciciel(PietroFranek, ZwierzFranek),
        wlasciciel(PietroSzymon, ZwierzSzymon),
        wlasciciel(PietroStefan, ZwierzStefan),
        wlasciciel(PietroAlbert, ZwierzAlbert),
        wlasciciel(PietroRobert, ZwierzRobert),
        wlasciciel(PietroMarcin, ZwierzMarcin),
        wlasciciel(PietroJarek, ZwierzJarek),
        

        write('Jarek '), write(PietroJarek), write(' '), write(ZwierzJarek), nl,
        write('Marcin '), write(PietroMarcin), write(' '), write(ZwierzMarcin), nl,
        write('Albert '), write(PietroAlbert), write(' '), write(ZwierzAlbert), nl,
        write('Robert '), write(PietroRobert), write(' '), write(ZwierzRobert), nl,
        write('Stefan '), write(PietroStefan), write(' '), write(ZwierzStefan), nl,
        write('Szymon '), write(PietroSzymon), write(' '), write(ZwierzSzymon), nl,
        write('Franek '), write(PietroFranek), write(' '), write(ZwierzFranek).

```
YOUR ANSWER HERE

przykład wywołania:
 
rozwiazanie().

