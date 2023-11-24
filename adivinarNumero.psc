Algoritmo adivinarNumero
	Definir numero_ingresado, numero_adivinar, intentos, intentos_usados Como Entero
	Definir continuar Como Caracter
	numero_adivinar<-Azar(20)+1
	intentos=10
	intentos_usados=0
	Repetir
		Escribir "Juego para adivinar un numero de 1 a 20"
		Escribir "Escribe un numero a adivinar: "
		Leer numero_ingresado
		intentos_usados<-intentos_usados+1
		Si numero_ingresado=numero_adivinar Entonces
			Escribir "Felicitaciones, adivinaste el numero secreto en el intento numero: " intentos_usados
			intentos_usados<-0
		FinSi
		Si numero_ingresado<numero_adivinar Entonces
			Escribir "El numero ingresado es menor al numero secreto"
		FinSi
		Si numero_ingresado>numero_adivinar Entonces
			Escribir "El numero ingresado es mayor al numero secreto"
		FinSi
		Si numero_ingresado<>numero_adivinar Entonces
			Escribir "Te quedan " intentos-intentos_usados " intentos"
		FinSi
		Si intentos_usados=10 Entonces
			Escribir "Has perdido, ya no te quedan mas intentos, el numero secreto es: " numero_adivinar
			intentos_usados<-0
			numero_adivinar<-Azar(10)+1
		FinSi
		Repetir 
			Escribir "Desear continuar si/no"
			Leer continuar
			Si numero_ingresado=numero_adivinar Y continuar="si" Entonces
				numero_adivinar<-Azar(10)+1
			FinSi
			Si continuar="no" Entonces
				intentos_usados=10
			FinSi
			Si continuar<>"si" Y continuar<>"no" Entonces
				Escribir "Opción invalida, intente nuevamente"
			FinSi
		Hasta Que continuar="si" O continuar="no"
	Hasta Que intentos_usados=10

FinAlgoritmo
