	Proceso CancionesDJ
		Definir nombre, nombreMayor, nombreMenor Como Cadena;
		Definir min, seg, duracionSeg, totalSeg Como Entero;
		Definir mayorDuracion, menorDuracion Como Entero;
		Definir i, n Como Entero;
		Definir horas, minutos, segundos Como Real;		
		totalSeg <- 0;
		mayorDuracion <- -1;
		menorDuracion <- 999999;
		Escribir "¿Cuántas canciones quieres ingresar?";
		Leer n;
		Para i <- 1 Hasta n Con Paso 1 Hacer
			Escribir "Nombre de la canción ", i, ":";
			Leer nombre;
			Escribir "Minutos:";
			Leer min;
			Escribir "Segundos:";
			Leer seg;
			duracionSeg <- min * 60 + seg;
			totalSeg <- totalSeg + duracionSeg;
			Si duracionSeg > mayorDuracion Entonces
				mayorDuracion <- duracionSeg;
				nombreMayor <- nombre;
			FinSi
			Si duracionSeg < menorDuracion Entonces
				menorDuracion <- duracionSeg;
				nombreMenor <- nombre;
			FinSi
		FinPara
		horas <- totalSeg / 3600;
		horas<- trunc (horas);
		minutos <- (totalSeg % 3600) / 60;
		minutos <- trunc (minutos);
		segundos <- totalSeg % 60;
		Escribir "Tiempo total: ", horas, ":", minutos, ":", segundos;
		Escribir "Canción más larga: ", nombreMayor; 
		Escribir "Canción más corta: ", nombreMenor;
FinProceso
