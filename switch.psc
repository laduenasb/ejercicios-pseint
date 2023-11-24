Algoritmo menuOperaciones
	// Inicializar las variables
	Definir opcion, salir, num1, num2, resultado Como Entero
	
	// Inicializar el bucle
	
	Repetir
		Escribir "1. Sumar"
		Escribir "2. Restar"
		Escribir "3. Multiplicar"
		Escribir "4. Division"
		Escribir "5. Salir"
		Escribir "Seleccione una operación: "
		// Almacenaremos la opción que digitemos por consola
		Leer opcion
		
		// Evaluar la opción seleccionada
		
		Segun opcion Hacer
			1: 
				Escribir "Ingrese el primer numero"
				Leer num1
				Escribir "Ingrese el segundo numero"
				Leer num2
				resultado<-num1+num2
				Escribir "El resultado de la suma es: " resultado
			2: 
				Escribir "Ingrese el primer numero"
				Leer num1
				Escribir "Ingrese el segundo numero"
				Leer num2
				resultado<-num1-num2
				Escribir "El resultado de la resta es: " resultado
			3: 
				Escribir "Ingrese el primer numero"
				Leer num1
				Escribir "Ingrese el segundo numero"
				Leer num2
				resultado<-num1*num2
				Escribir "El resultado de la multiplicación es: " resultado
			4: 
				Escribir "Ingrese el primer numero"
				Leer num1
				Escribir "Ingrese el segundo numero"
				Leer num2
				resultado<-num1/num2
				Escribir "El resultado de la división es: " resultado
			5:
				// Que me finalice el bucle si se elige la opción 5
				salir=5
			De Otro Modo:
				Escribir "Opción no válida, intentelo de nuevo"
			// Si el usuario ingresa una opción no inicializada, el programa me lo indica
		FinSegun
	Hasta Que salir=5
FinAlgoritmo
