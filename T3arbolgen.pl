%Relacion paternidad
padre(gabriel, gabriela).
padre(vgabriel, gabriel).
padre(bonifacio,vgabriel).
padre(artemio,raquel).
padre(pablo, mireille).
padre(jesus, pablo).
padre(leonardo,micaela).

%Relacion maternidad
madre(mireille, gabriela).
madre(micaela,mireille).
madre(antonia,micaela).
madre(ines,pablo).
madre(raquel,gabriel).
madre(concepcion,raquel).
madre(martha,vgabriel).


% Regla para determinar si alguien es abuelo
es_abuelo(Abuelo, Nieto) :-
    padre(Abuelo, PadreOMadre),
    (padre(PadreOMadre, Nieto) ; madre(PadreOMadre, Nieto)).

% Regla para determinar si alguien es abuela
es_abuela(Abuela, Nieto) :-
    madre(Abuela, PadreOMadre),
    (padre(PadreOMadre, Nieto) ; madre(PadreOMadre, Nieto)).

% Regla para determinar si alguien es bisabuelo
es_bisabuelo(Bisabuelo, Bisnieto) :-
    padre(Bisabuelo, AbueloAbuela),
    (es_abuelo(AbueloAbuela, Bisnieto) ; es_abuela(AbueloAbuela, Bisnieto)).


% Regla para determinar si alguien es bisabuela
es_bisabuela(Bisabuela, Bisnieto) :-
    madre(Bisabuela, AbueloAbuela),
    (es_abuelo(AbueloAbuela, Bisnieto) ; es_abuela(AbueloAbuela, Bisnieto)).
