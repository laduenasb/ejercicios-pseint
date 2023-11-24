Algoritmo relojDigital
	// Inicializar las variables
	horas<-0
	minutos<-0
	segundos<-0
	// Inicializar un bucle infinito
	Mientras Verdadero Hacer
		Si horas<10 Entonces
			Escribir "0" Sin Saltar
		FinSi
		
		Escribir horas, ":" Sin Saltar
		Si minutos <10 Entonces
			Escribir "0" Sin Saltar
		FinSi
		
		Escribir minutos, ":" Sin Saltar
		
		Escribir segundos
		// Aumentar en un segundo
		segundos<-segundos+1
		Si segundos=60 Entonces
			minutos<-minutos+1
			//Reinicie los segundos
			segundos<-0
		FinSi
		//Se me agregue un minuto más
		Si minutos=60 Entonces
			//Agregamos una hora más
			horas<-horas+1
			//Reinicie los minutos
			minutos<-0
		FinSi
		Si horas=24 Entonces
			// Reiniciamos las horas
			horas<-0
		FinSi
		Esperar 1 segundos
		Borrar Pantalla
	FinMientras
	
FinAlgoritmo
