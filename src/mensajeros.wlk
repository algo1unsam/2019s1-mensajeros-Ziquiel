import lugares.*

object mensajeria {

	var mensajeria = #{}

	method mensajeros() = mensajeria

	method contratar(alguien) {
		mensajeria.add(alguien)
	}

	method despedir(alguien) {
		mensajeria.remove(alguien)
	}

	method despedirTodes() {
		mensajeria.clear()
	}

	method mensGrande() = (mensajeria.size() > 2)

	method primerEntrega(lugar) = lugar.dejaPasar(mensajeria.asList().first())

	method ultimoPeso() = mensajeria.asList().last().peso()

}

object roberto {

	var property peso = bici.peso() + 90
	var property llamada = 0

	method camion() {
		peso = camion.peso() + 90
	}

}

object chuckNorris {

	var property peso = 900
	var property llamada = 1

}

object neo {

	var property peso = 0
	var property llamada = 1

}

object paquete {

	method pago(lugar) {
		lugar.pagado(1)
	}

	method destino(lugar, mensajero) = lugar.dejaPasar(mensajero)

}

object bici {

	var property peso = 8

}

object camion {

	var property peso = 500

}

