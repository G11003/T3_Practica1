% Hechos: Definimos qué lenguajes programa cada persona.
sabe(ana, python).
sabe(ana, java).
sabe(juan, prolog).
sabe(carlos, python).
sabe(carlos, cplusplus).

% Regla: Una persona es programadora si sabe al menos un lenguaje.
programador(X) :- sabe(X, _).

% Regla: Una persona es desarrollador full-stack si sabe Python y Java.
full_stack(X) :- sabe(X, python), sabe(X, java).

