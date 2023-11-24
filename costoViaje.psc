Algoritmo costoViaje
	Definir numero_personas Como Entero
	Definir tipo Como Caracter
	Definir costo Como Real
	Definir continuar Como Caracter
	Definir costo_persona Como Real
	Repetir
		Escribir "Calculadora del costo del viaje"
		Escribir "Ingrese el numero de personas"
		Leer numero_personas
		costo<-0
		Repetir
			Escribir "A: Costo por persona de $45,000"
			Escribir "B: Costo por persona de $25,000"
			Escribir "C: Costo por persona de $30,000"
			Escribir "Ingrese el tipo de autobús"
			Leer tipo
			Segun tipo Hacer
				"A":
					costo_persona<-45000
					Si personas>=20 Entonces
						costo<-numero_personas*numero_costo_persona
					SiNo
						costo<-costo_persona*20
						costo_persona<-costo/numero_personas
					FinSi
				"B":
					costo_persona<-25000
					Si personas>=20 Entonces
						costo<-numero_personas*costo_persona
					SiNo
						costo<-costo_persona*20
						costo_persona<-costo/numero_personas
					FinSi
				"C":
					costo_persona<-30000
					Si personas>=20 Entonces
						costo<-numero_personas*costo_persona
					SiNo
						costo<-costo_persona*20
						costo_persona<-costo/numero_personas
					FinSi
				De Otro Modo:
					Escribir "Opción no valida, intente nuevamente"
			FinSegun
		Hasta Que tipo="A" O tipo="B" O tipo="C"
		Escribir "El costo del viaje es: " costo " pesos"
		Escribir "El costo por persona es: " costo_persona " pesos"
		Repetir
			Escribir "Desar continuar S/N"
			Leer continuar
			Si continuar<>"N" Y continuar<>"S" Entonces
				Escribir "Opción no valida, intente nuevamente"
			FinSi
		Hasta Que continuar="N" O continuar="S"
	Hasta Que continuar="N"
FinAlgoritmo