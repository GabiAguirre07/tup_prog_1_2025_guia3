Proceso EvaluacionProgramacion
    Definir nota Como Real;
    Definir sumaNotas, cantidadNotas Como Real;
    Definir aprobados, noAprobados Como Entero;
    Definir muyBuenos, buenos, regulares, insuficientes Como Entero;
    Definir porcentajeMB, porcentajeB, porcentajeR, porcentajeI Como Real;
    sumaNotas <- 0;
    cantidadNotas <- 0;
    aprobados <- 0;
    noAprobados <- 0;
    muyBuenos <- 0;
    buenos <- 0;
    regulares <- 0;
    insuficientes <- 0;
    Escribir "Ingrese las notas (entre 0 y 10). Para finalizar ingrese un valor negativo:";
    Repetir
        Leer nota;
        Si nota >= 0 Y nota <= 10 Entonces
            cantidadNotas <- cantidadNotas + 1;
            sumaNotas <- sumaNotas + nota;
            Si nota >= 6 Entonces
                aprobados <- aprobados + 1;
            SiNo
                noAprobados <- noAprobados + 1;
            FinSi
            Si nota >= 8 Entonces
                muyBuenos <- muyBuenos + 1;
            SiNo
                Si nota >= 6 Entonces
                    buenos <- buenos + 1;
                SiNo
                    Si nota >= 4 Entonces
                        regulares <- regulares + 1;
                    SiNo
                        insuficientes <- insuficientes + 1;
                    FinSi
                FinSi
            FinSi
        FinSi
    Hasta Que nota < 0;
    Si cantidadNotas > 0 Entonces
        porcentajeMB <- (muyBuenos * 100) / cantidadNotas;
        porcentajeB <- (buenos * 100) / cantidadNotas;
        porcentajeR <- (regulares * 100) / cantidadNotas;
        porcentajeI <- (insuficientes * 100) / cantidadNotas;
        Escribir "Cantidad total de notas: ", cantidadNotas;
        Escribir "Promedio: ", sumaNotas / cantidadNotas;
        Escribir "Cantidad de aprobados: ", aprobados;
        Escribir "Cantidad de no aprobados: ", noAprobados;
        Escribir "Porcentaje Muy Bueno (8 o más): ", porcentajeMB, "%";
        Escribir "Porcentaje Bueno (6 o 7): ", porcentajeB, "%";
        Escribir "Porcentaje Regular (4 o 5): ", porcentajeR, "%";
        Escribir "Porcentaje Insuficiente (3 o menos): ", porcentajeI, "%";
    SiNo
        Escribir "No se ingresaron notas válidas.";
    FinSi
FinProceso