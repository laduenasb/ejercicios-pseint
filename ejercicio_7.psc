Algoritmo ejercicio7
	Repetir 
		Escribir "Nombre del alumno"
		Leer Nombre
		si(Nombre <> "") entonces
			Escribir "Nota practica"
			Leer Nota1
			Escribir "Nota de Problemas"
			Leer Nota2
			Escribir "Nota Teorica"
			Leer Nota3
			si(Nota1 < 10 Y Nota2<10 Y Nota3<10) Entonces
				Promedio<-0.1*Nota1+0.5*Nota2+0.4*Nota3
				Escribir "El estudiante " Nombre " tiene un promedio de " promedio 
			SiNo
				Escribir "Tus notas deben estar entre 0 y 10"
			FinSi
		FinSi
	Hasta Que (Nombre = "")
FinAlgoritmo