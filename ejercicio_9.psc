Algoritmo ejercicio_9
	Escribir "Ingrese un numero positivo"
	Leer numero
	i<-2
	esPrimo<-Verdadero
	Repetir
		Si numero MOD i = 0 Entonces
			i=numero
			esPrimo<-Falso
		SiNo
			i<-i+1
		FinSi
	Hasta Que i=numero
	Si esPrimo=Verdadero Entonces
		Escribir numero " es primo"
	SiNo
		Escribir numero " no es primo"
	FinSi
FinAlgoritmo
