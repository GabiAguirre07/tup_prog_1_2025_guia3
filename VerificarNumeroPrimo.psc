Proceso VerificarNumeroPrimo
    Definir numero, i, divisores Como Entero;
    Escribir "Ingrese un n�mero:";
    Leer numero;
    Si numero <= 1 Entonces
        Escribir "El n�mero no es primo.";
    SiNo
        divisores <- 0;
        i <- 1;
        Mientras i <= numero Hacer
            Si numero % i = 0 Entonces
                divisores <- divisores + 1;
            FinSi
            i <- i + 1;
        FinMientras
        Si divisores = 2 Entonces
            Escribir "El n�mero es primo.";
        SiNo
            Escribir "El n�mero no es primo.";
        FinSi
    FinSi
FinProceso