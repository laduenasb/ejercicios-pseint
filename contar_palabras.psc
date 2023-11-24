Algoritmo contar_palabras
	Escribir "Escribe una oración: "
	Leer oracion
	
	i<-1
	palabras<-0
	cantidad_letras<-Longitud(oracion)
	//Escribir Subcadena("hola",2,2)
	letra0=Subcadena(oracion,1,1)
	Repetir
		letra1=Subcadena(oracion,i,i)
		letra2=Subcadena(oracion,i+1,i+1)
		Si (letra1=" " Y letra2<>" ")  Entonces
			palabras<-palabras+1
		FinSi
//		Si (i=1 Y letra1=" " Y letra2=" ") O (i=1 Y letra1=" " Y letra2<>" ") Entonces
//			palabras<-palabras-1
//		FinSi
		i<-i+1
	Hasta Que i=cantidad_letras
	Si letra0=" " Entonces
		palabras<-palabras-1
	FinSi
	Escribir "La cantidad de palabras es: " palabras+1
FinAlgoritmo
