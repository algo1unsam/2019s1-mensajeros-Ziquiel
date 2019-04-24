import mensajeros.*

object puenteBrooklyn {

	var property pagado = 0

	method dejaPasar(mensajero) = ((mensajero.peso() <= 1000) and (pagado == 1))

}

object laMatrix {

	var property pagado = 0

	method dejaPasar(mensajero) = ((mensajero.llamada() == 1) and (pagado == 1))

}

