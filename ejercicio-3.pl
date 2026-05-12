% Definicion de nuevos operadores
% op(Precedencia, Tipo, Nombre)
%is: es verdadero o falso
%member: esta adentro de una lista
%append: agregar elemento a lista.


% Se puede usar prolog para representar conocimiento.
% EJ. razonamiento legal, planificacion y diagnóstico 

% Inferencia Natural
% Prolog permite hacer generacion de texto, traduccion y comprensión de texto.

% Ejercicio 3 (por fin!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!)

% definir tiempos variables

tiempo(presente).
tiempo(pasado).
tiempo(futuro).

% definicion de personas

persona(primera).
persona(segunda).
persona(tercera).

numero(singular).
numero(plural).

% definicion de conjugacion de verb to be.

ser(presente, primera, singular, "am").
ser(presente, segunda, singular, "are").
ser(presente, tercera, singular, "is").
ser(presente, primera, plural, "are").
ser(presente, segunda, plural, "are").
ser(presente, tercera, plural, "are").

ser(pasado, primera, singular, "was").
ser(pasado, segunda, singular, "were").
ser(pasado, tercera, singular, "was").
ser(pasado, primera, plural, "were").
ser(pasado, segunda, plural, "were").
ser(pasado, tercera, plural, "were").

ser(futuro, primera, singular, "will be").
ser(futuro, segunda, singular, "will be").
ser(futuro, tercera, singular, "will be").
ser(futuro, primera, plural, "will be").
ser(futuro, segunda, plural, "will be").
ser(futuro, tercera, plural, "will be").

conjugar_verbo(Verbo, Tiempo, Persona, Numero, Conjugacion):-
    tiempo(Tiempo),
    persona(Persona),
    numero(Numero),
    (
        Verbo = "to be" ->
    ser(Tiempo, Persona, Numero, R),
Conjugacion = R;
    Conjugacion = Verbo
    ).