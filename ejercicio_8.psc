Algoritmo ejercicio_8
	Escribir "Ingresa un número positivo"
	Leer numero
	i<-2
	factorial<-1
	Si numero<>1 Entonces
		Repetir
			factorial<-factorial*i
			i<-i+1
			Hasta Que (i=numero+1)
		SiNo
			Si numero=1 Entonces
				factorial<-1
			FinSi
	FinSi
	Escribir "El factorial de: " numero " es: " factorial
FinAlgoritmo
