Algoritmo factura_venta_de_licores
	
	//PR= Precio, JW= Johnnie Walker, JD= Jack Daniels, CR= Chivas Regal, CAN= Cantidad, DES= Descuento
	//CTD= Costo total descuento, SUM= Suma
	
	//Declaracion de variables
	Definir nombre  COMO CADENA;
	Definir PR Como Caracter;
	Definir PJW, PJD, PCR, CANJW, CANJD, CANCR, RJW, RJD, RCR Como Entero;
	
	//Asignacion de variables
	PJW<-2195;
	PJD<-1675;
	PCR<-1975;
	
	Escribir 'Digite su nombre completo.';
	Leer cajero;
	Op<-0;
	
	Mientras Op=0 Hacer
		Escribir'Ingrese nombre completo del cliente.';
		Leer nombre;
		Escribir'Ingrese cantidad de botellas Johnnie Walker.';
		Leer CANJW;
		RJW<-PJW*CANJW;
		Escribir'Ingrese cantidad de botellas Jack Daniels';
		Leer CANJD;
		RJD<-PJD*CANJD;
		Escribir 'Ingrese cantidad de botellas Chivas Regal';
		Leer CANCR;
		RCR<-PCR*CANCR;
		
		Limpiar Pantalla;
		
		Escribir ' ';
		Escribir '=================================================';
		Escribir '-------------------------------------------------';
		Escribir '                   FACTURA';
		Escribir '-------------------------------------------------';
		Escribir ' DESCRIPCION          CANT.        VALORxUNID.';
		Escribir ' ';
		Escribir 'Johnnie Walker          ', CANJW, '             ', PJW;
		Escribir 'Jack Daniels            ', CANJD, '             ', PJD;
		Escribir 'Chivas Regal            ', CANCR, '             ', PCR;
		Escribir '                                    -----------';
		
		SUM<-RJW+RJD+RCR;
		
		Si SUM>=50000 Entonces
			DES<-(SUM*0.05);
			Escribir 'Valor total de la compra:             ', SUM;
			Escribir ' ';
			Escribir 'Descuento aplicado del 5%:           ', DES;
			CTD<-(SUM-DES);
			Escribir 'TOTAL A PAGAR:                       ', CTD;
		SiNo
			DES<-(0);
			Escribir 'Valor total de la compra:            ', SUM;
			Escribir ' ';
			Escribir 'Descuento aplicado del 5%:           ', DES;
			CTD<-(SUM-DES);
			Escribir 'TOTAL A PAGAR:                       ', CTD;
		Fin Si
		
		Escribir ' ';
		Escribir 'Le atendio: ', cajero;
		Escribir ' ';
		Escribir 'Cliente: ', nombre;
		Escribir ' ';
		Escribir '         ~~~~~~~~~~~~~~~~~~~~~~~~~~~         ';
		Escribir '          ¡¡GRACIAS POR SU COMPRA!!          ';
		Escribir '         ~~~~~~~~~~~~~~~~~~~~~~~~~~~         ';
		Escribir '==================================================';
		Escribir ' ';
		Escribir ' ';
		Op<-1;
		Escribir 'Digita (0) para volver a facturar.';
		Leer Op;
		Limpiar Pantalla;
	Fin Mientras
	
	
FinAlgoritmo
