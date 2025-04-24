Proceso CalculadoraDeCompras
    Definir nombre Como Cadena;
    Definir cantidad, total_productos Como Entero;
    Definir precio_unitario, subtotal, total_pagar Como Real;
    Definir continuar Como Caracter;
    total_pagar <- 0;
    total_productos <- 0;
    continuar <- 'S';
    Escribir "CALCULADORA DE COMPRAS";
    Mientras continuar = 'S' o continuar = 's' Hacer
        Escribir "Ingrese el nombre del producto: ";
        Leer nombre;
        Escribir "Ingrese la cantidad de ", nombre, ": ";
        Leer cantidad;
        Escribir "Ingrese el precio unitario de ", nombre, ": $";
        Leer precio_unitario;
        subtotal <- cantidad * precio_unitario;
        total_pagar <- total_pagar + subtotal;
        total_productos <- total_productos + cantidad;
        Escribir "Subtotal por ", nombre, ": $", subtotal;
        Escribir "¿Desea ingresar otro producto? (S/N): ";
        Leer continuar;
    FinMientras
    Escribir "RESUMEN DE LA COMPRA";
    Escribir "Total de productos adquiridos: ", total_productos;
    Escribir "Total a pagar: $", total_pagar;
FinProceso