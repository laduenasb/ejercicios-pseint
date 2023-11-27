Algoritmo inventarioProductos
    // Definir la matriz para el inventario
    Dimension inventario[100, 3] // Supongamos que hay un máximo de 100 productos y 3 columnas (nombre, cantidad, precio)
	
    // Variable para controlar el menú
    Definir opcion, codigo, cantidad, indice, totalVenta Como Entero
    Definir nombreProducto Como Caracter
    Definir precioProducto Como Real
	
    // Inicializar el inventario (opcional)
    // Puedes hacerlo con valores predeterminados o mediante la lectura de un archivo, por ejemplo.
	
    // Ciclo principal del programa
    Repetir
        // Mostrar menú
        Escribir("1. Agregar nuevo producto")
        Escribir("2. Actualizar cantidad disponible")
        Escribir("3. Mostrar información del inventario")
        Escribir("4. Realizar venta")
        Escribir("5. Salir")
        Escribir("Seleccione una opción: ")
        Leer opcion
		
        // Realizar acciones según la opción seleccionada
        Segun opcion Hacer
            1:
                // Agregar nuevo producto
                Escribir("Ingrese el código del producto: ")
                Leer codigo
                Escribir("Ingrese el nombre del producto: ")
                Leer nombreProducto 
                Escribir("Ingrese la cantidad disponible: ")
                Leer cantidad
                Escribir("Ingrese el precio del producto: ")
                Leer precioProducto
				
                // Buscar un espacio disponible en el inventario
                indice <- 1
                Mientras indice <= 100 Y inventario[indice, 1] <> 0 Hacer
                    indice <- indice + 1
                FinMientras
				
                // Verificar si hay espacio disponible
                Si indice <= 100 Entonces
                    inventario[indice, 1] <- codigo
                    inventario[indice, 2] <- cantidad
                    inventario[indice, 3] <- precioProducto
                    Escribir("Producto agregado correctamente.")
                Sino
                    Escribir("No hay espacio disponible en el inventario.")
                FinSi
				
            2:
                // Actualizar cantidad disponible
                Escribir("Ingrese el código del producto: ")
                Leer codigo
				
                // Buscar el producto en el inventario
                indice <- 1
                Mientras indice <= 100 Y inventario[indice, 1] <> codigo Hacer
                    indice <- indice + 1
                FinMientras
				
                // Verificar si se encontró el producto
                Si indice <= 100 Entonces
                    Escribir("Ingrese la nueva cantidad disponible: ")
                    Leer cantidad
                    inventario[indice, 2] <- cantidad
                    Escribir("Cantidad actualizada correctamente.")
                Sino
                    Escribir("Producto no encontrado en el inventario.")
                FinSi
				
            3:
                // Mostrar información del inventario
                Escribir("Código | Nombre | Cantidad | Precio")
                Para indice Desde 1 Hasta 100 Hacer
                    Si inventario[indice, 1] <> 0 Entonces
                        Escribir inventario[indice, 1], " | ", inventario[indice, 2], " | ", inventario[indice, 3]
                    FinSi
                FinPara
				
            4:
                // Realizar venta
                Escribir("Ingrese el código del producto a vender: ")
                Leer codigo
				
                // Buscar el producto en el inventario
                indice <- 1
                Mientras indice <= 100 Y inventario[indice, 1] <> codigo Hacer
                    indice <- indice + 1
                FinMientras
				
                // Verificar si se encontró el producto
                Si indice <= 100 Entonces
                    Escribir("Ingrese la cantidad a vender: ")
                    Leer cantidad
                    Si cantidad <= inventario[indice, 2] Entonces
                        totalVenta <- cantidad * inventario[indice, 3]
                        Escribir "Venta realizada. Total a pagar: $", totalVenta
                        // Actualizar la cantidad en el inventario
                        inventario[indice, 2] <- inventario[indice, 2] - cantidad
                    Sino
                        Escribir("No hay suficiente cantidad disponible para la venta.")
                    FinSi
                Sino
                    Escribir("Producto no encontrado en el inventario.")
                FinSi
				
            5:
                // Salir del programa
                Escribir("Saliendo del programa.")
        FinSegun
		
    Hasta Que opcion = 5

FinAlgoritmo
