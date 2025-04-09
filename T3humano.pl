% Hecho: Definimos que Juan es humano.
humano(juan).

% Regla: Si alguien es humano, entonces es mortal.
mortal(X) :- humano(X).

% Consulta esperada:
% ?- mortal(juan).
