% Hechos: nacionalidades
nacionalidad(manolo, espanol).
nacionalidad(juan, mexicano).
nacionalidad(john, estadounidense).
nacionalidad(piter, ingles).
nacionalidad(anselmo, colombiano).

% Reglas: es europeo
es_europeo(X) :- nacionalidad(X, espanol).
es_europeo(X) :- nacionalidad(X, ingles).

% Reglas: es americano
es_americano(X) :- nacionalidad(X, mexicano).
es_americano(X) :- nacionalidad(X, estadounidense).
es_americano(X) :- nacionalidad(X, colombiano).

% Reglas: es terrícola
es_terricola(X) :- nacionalidad(X, _).

% Reglas: son del mismo continente
mismo_continente(X, Y) :- es_europeo(X), es_europeo(Y).
mismo_continente(X, Y) :- es_americano(X), es_americano(Y).

