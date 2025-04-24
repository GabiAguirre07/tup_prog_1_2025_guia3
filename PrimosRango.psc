Proceso PrimosRango
    Definir inicio, finn, tom, numero, i, divisores Como Entero;
    Escribir "Ingrese el primer número del rango:";
    Leer inicio;
    Escribir "Ingrese el segundo número del rango:";
    Leer finn;	
    Si inicio>finn Entonces
        tom <- inicio;
        inicio <- finn;
	finn <- tom;
FinSi
Escribir "Números primos en el rango ", inicio, " a ", finn, ":";
Para numero <- inicio Hasta finn Con Paso 1 Hacer
	Si numero > 1 Entonces
		divisores <- 0;
		i <- 1;
		Mientras i <= numero Hacer
			Si numero % i = 0 Entonces
				divisores <- divisores + 1;
			FinSi
			i <- i + 1;
		FinMientras
		Si divisores = 2 Entonces
			Escribir numero;
		FinSi
	FinSi
FinPara
FinProceso