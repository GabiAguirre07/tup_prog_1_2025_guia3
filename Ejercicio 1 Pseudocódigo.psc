Proceso Ejercicio1
	Definir prem, contimp,par,numayor,numenor,acum,i,contpar como Entero;
	Definir promimp como Real;
	numenor<-9999;
	numayor<-0000;
	Escribir " Ingrese el primer premio de la loteria: ";
	Leer prem;
	Para i<-1 Hasta 19 Con Paso 1 Hacer
		Escribir " Ingrese el siguiente premio de la loteria: ";
		Leer prem;
		Si prem % 2 ==0 Entonces
			contpar<-contpar+1;
		SiNo
			acum<-acum+prem;
			contimp<-contimp+1;
		FinSi
		Si prem>numayor Entonces
			numayor<-prem;
		FinSi
		Si prem<numenor Entonces
			numenor<-prem;
		FinSi
	FinPara
	promimp<-acum/contimp;
	promimp<- trunc (promimp*100)/100;
	Escribir " El promedio de todos los impares es de: ",promimp;
	Escribir " La cantidad de números pares es de: ",contpar;
	Escribir " El mayor número es: ",numayor;
	Escribir " El menor número es: ",numenor;
FinProceso
