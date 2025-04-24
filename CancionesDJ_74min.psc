Proceso CancionesDJ_74min
    Definir nombre, nombreMayor, nombreMenor Como Cadena;
    Definir min, seg, duracionSeg, totalSeg Como Entero;
    Definir mayorDuracion, menorDuracion, i Como Entero;
    Definir horas, minutos, segundos Como Real;
    totalSeg <- 0;
    mayorDuracion <- -1;
    menorDuracion <- 999999;
    i <- 1;
    Mientras totalSeg <= 4440 Hacer
        Escribir "Nombre de la canción ", i, ":";
        Leer nombre;
        Escribir "Minutos:";
        Leer min;
        Escribir "Segundos:";
        Leer seg;
        duracionSeg <- min * 60 + seg;
        Si totalSeg + duracionSeg > 4440 Entonces
            Escribir "No se puede agregar esta canción, excede los 74 minutos.";
        FinSi
        totalSeg <- totalSeg + duracionSeg;
        Si duracionSeg > mayorDuracion Entonces
            mayorDuracion <- duracionSeg;
            nombreMayor <- nombre;
        FinSi
        Si duracionSeg < menorDuracion Entonces
            menorDuracion <- duracionSeg;
            nombreMenor <- nombre;
        FinSi
        i <- i + 1;
    FinMientras
    horas <- totalSeg / 3600;
    horas <- trunc(horas);
    minutos <- (totalSeg % 3600) / 60;
    minutos <- trunc(minutos);
    segundos <- totalSeg % 60;
    Escribir "Tiempo total: ", horas, ":", minutos, ":", segundos;
    Escribir "Canción más larga: ", nombreMayor;
    Escribir "Canción más corta: ", nombreMenor;
FinProceso