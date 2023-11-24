Algoritmo cajeroAutomatico
	Definir PIN, opcion, salir como entero
	Definir saldo, retiro, deposito Como Real
	saldo<-0.0
	Repetir
		Escribir "Por favor ingrese su pin: " Sin Saltar		
		Leer PIN
		Si PIN<>2111 Entonces
			Escribir "Pin incorrecto intente nuevamente"
		FinSi
	Hasta Que PIN=2111
	
	Repetir
		Escribir "1. Consultar saldo"
		Escribir "2. Retiro de saldo"
		Escribir "3. Depósito"
		Escribir "4. Salir"
		Leer opcion
		
		Segun opcion hacer
			1:
				Escribir "Tu saldo es: " saldo " pesos"
				Escribir "Operación realizada: consulta de saldo"
			2:
				Escribir "Ingresa el saldo a retirar: "
				Leer retiro
				Si retiro<=saldo Entonces
					saldo<-saldo-retiro
					Escribir "Realizando retiro..."
					Escribir "Tu saldo actual es: " saldo " pesos"
					Escribir "Operación realizada: retiro de saldo por valor de: " retiro " pesos"
				SiNo
					Escribir "Tu saldo es insuficiente por favor intenta nuevamente"
					Escribir "Tu saldo actual es: " saldo " pesos"
					Escribir "Operación realizada: retiro fallido"
				FinSi
			3: 
				Escribir "Ingresa el dinero a depositar: "
				Leer deposito
				saldo<-saldo+deposito
				Escribir "Realizando deposito..."
				Escribir "Tu saldo actual es: " saldo " pesos"
				Escribir "Operación realizada: deposito de dinero por valor de: " deposito " pesos"
			4:
				salir=4
			De Otro Modo:
				Escribir "Opción invalida, por favor intenta nuevamente"
		FinSegun
	Hasta Que salir=4
FinAlgoritmo
