data peque;
input  sector $ 1-31 penpymes comma6.2 ;
cards;
TOTAL INDUSTRIAS                13,77
ALIMENTACION Y BEBIDAS          9,27
COQUERIAS Y REFINO              20,85
METALURGIA                      10,06
PRODUCTORS INFORMÁTICOS         17,75
ENERGÍA Y AGUA                  22,99
TOTAL CONSTRUCCIÓN              7,72
TOTAL SERVICIOS                 20,10
VENTA Y REPARACION DE VEHÍCULOS 20,10
TRANSPORTE Y ALMACENAMIENTO     9,89
SERVICIOS DE ALOJAMIENTO        14,84
INFORMACIÓN Y COMUNICACIONES    68,83
ACTIVIDADES INMOBILIARIAS       15,76
ACTIVIDADES ADMINISTRATIVAS     12,55
SECTOR TIC                      71,11
;
proc print data=peque;run;

data B;
input medianas comma5.2 grandes comma6.2;
cards;
17,56 50,68
12,24 46,01
20,19 55,00
17,08 57,38
23,20 47,24
16,99 56,03
11,47 47,43
22,93 45,42
19,90 45,07
15,50 50,75
9,980 41,28
50,51 73,05
26,16 49,09
9,390 24,53
48,36 68,94
;
proc print data=B;run;

title '% DE ESPECIALISTAS EN DATOS SEGÚN SECTOR Y TAMAÑO DE LA EMPRESA';
data todo;
merge peque B;
run;
proc print data=todo;run;

/*Análisis descriptivo general básico*/
title'Análisis descriptivo general básico';
proc means data=todo  n mean var std max min range cv skewness kurtosis;run;
