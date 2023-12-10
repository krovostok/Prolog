 % Autorius: Oskar Krasev
% Kursas: 3
% Grupė: 1
% Užduoties variantai: 5, 26, 38, 42

% Duomenų bazė
asmuo(jonas, vyras, 45, zvejyba).
asmuo(marija, moteris, 43, sodininkyste).
asmuo(petras, vyras, 20, programavimas).
asmuo(elze, moteris, 17, dailė).
asmuo(saulius, vyras, 15, futbolas).

mama(marija, petras).
mama(marija, elze).
mama(marija, saulius).

pora(jonas, marija).

% Užduoties variantų predikatai

% 5 - vaikas(Vaikas, TevasMama) - Pirmasis asmuo (Vaikas) yra antrojo (TevasMama) vaikas
vaikas(Vaikas, Mama) :- mama(Mama, Vaikas).
vaikas(Vaikas, Tevas) :- mama(Mama, Vaikas), pora(Tevas, Mama).

% 26 - dar_pagyvens(Asmuo) - Asmuo Asmuo mėgsta kurią nors iš sporto šakų arba yra dar nepensinio amžiaus (64 metai vyrams ir 63 metai moterims)
dar_pagyvens(Asmuo) :- asmuo(Asmuo, Lytis, Amzius, _),
    (Lytis = vyras, Amzius < 64 ; Lytis = moteris, Amzius < 63).

% 38 - stos_i_informatika(Abiturientas) - Asmuo Abiturientas yra pakankamo (patys nuspręskite kokio) amžiaus ir domisi (mėgsta) informatika
stos_i_informatika(Abiturientas) :-
    asmuo(Abiturientas, _, Amzius, programavimas),
    Amzius >= 18.

% 42 - trys_draugai(Draugas1, Draugas2, Draugas3) - Asmenys Draugas1, Draugas2 ir Draugas3 yra panašaus amžiaus ir turi tą patį pomėgį
trys_draugai(Draugas1, Draugas2, Draugas3) :- asmuo(Draugas1, _, Amzius1, Pomegis),
    asmuo(Draugas2, _, Amzius2, Pomegis),
    asmuo(Draugas3, _, Amzius3, Pomegis),
    abs(Amzius1 - Amzius2) =< 2,
    abs(Amzius1 - Amzius3) =< 2,
    abs(Amzius2 - Amzius3) =< 2,
    Draugas1 \= Draugas2, Draugas2 \= Draugas3, Draugas1 \= Draugas3.

% Užklausų pavyzdžiai
% vaikas(petras, X).
% dar_pagyvens(jonas).
% stos_i_informatika(Y).
% trys_draugai(A, B, C).


