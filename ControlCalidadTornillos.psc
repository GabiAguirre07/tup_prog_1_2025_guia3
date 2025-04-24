Proceso ControlCalidadTornillos
    Definir codigoLote, loteConMenosFallas, loteConMasFallas Como Entero;
    Definir medidaEsperada, medicion, errorAbs Como Real;
    Definir i, fallasLote, totalFallas, totalProductos Como Entero;
    Definir maxErrorLote, porcentajeFallas, porcentajeTotalFallas Como Real;
    Definir menorFallas, mayorFallas, cantidadLotes Como Entero;
    totalFallas <- 0;
    totalProductos <- 0;
    cantidadLotes <- 0;
    menorFallas <- 11;
    mayorFallas <- -1;
    Repetir
        Escribir "Ingrese código del lote (0 para finalizar):";
        Leer codigoLote;
        Si codigoLote <> 0 Entonces
            cantidadLotes <- cantidadLotes + 1;
            Escribir "Ingrese la medida esperada:";
            Leer medidaEsperada;
            fallasLote <- 0;
            maxErrorLote <- 0;
            Para i <- 1 Hasta 10 Con Paso 1 Hacer
                Escribir "Ingrese la medición del producto ", i, ":";
                Leer medicion;
                errorAbs <- Abs(medicion - medidaEsperada);
                Si errorAbs > maxErrorLote Entonces
                    maxErrorLote <- errorAbs;
                FinSi
                Si errorAbs > 0 Entonces
                    fallasLote <- fallasLote + 1;
                FinSi
            FinPara
            porcentajeFallas <- (fallasLote * 100) / 10;
            Escribir "Mayor error absoluto en el lote: ", maxErrorLote;
            Escribir "Porcentaje de fallas en el lote: ", porcentajeFallas, "%";
            totalFallas <- totalFallas + fallasLote;
            totalProductos <- totalProductos + 10;
            Si fallasLote < menorFallas Entonces
                menorFallas <- fallasLote;
                loteConMenosFallas <- codigoLote;
            FinSi
            Si fallasLote > mayorFallas Entonces
                mayorFallas <- fallasLote;
                loteConMasFallas <- codigoLote;
            FinSi
        FinSi
    Hasta Que codigoLote = 0;
    Si cantidadLotes > 0 Entonces
        porcentajeTotalFallas <- (totalFallas * 100) / totalProductos;
        Escribir "INFORME FINAL";
        Escribir "Cantidad de lotes procesados: ", cantidadLotes;
        Escribir "Porcentaje total de fallas: ", porcentajeTotalFallas, "%";
        Escribir "Lote con menor cantidad de fallas: ", loteConMenosFallas;
        Escribir "Lote con mayor cantidad de fallas: ", loteConMasFallas;
    SiNo
        Escribir "No se procesaron lotes.";
    FinSi
FinProceso