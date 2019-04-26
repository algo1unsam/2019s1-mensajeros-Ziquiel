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

	method primerEntrega(lugar) = mensajeria.asList().first().puedeEntregar(lugar)

	method ultimoPeso() = mensajeria.asList().last().peso()

}

object roberto {
	var property pagado = 0
	var property peso = bici.peso() + 90
	var property llamada = 0
	method puedeEntregar (lugar)= (pagado==1 and lugar.dejaPasar(self)) 
	method camion() {
		peso = camion.peso() + 90
	}

}

object chuckNorris {
	var property pagado = 0
	var property peso = 900
	var property llamada = 1
	method puedeEntregar (lugar)= (pagado==1 and lugar.dejaPasar(self))
}

object neo {
	var property pagado = 0
	var property peso = 0
	var property llamada = 1
	method puedeEntregar (lugar)= (pagado==1 and lugar.dejaPasar(self))
}

object paquete {

	method pago(mensajero) {
		mensajero.pagado(1)
	}

	method destino(lugar,mensajero) = mensajero.puedeEntregar(lugar)

}

object bici {

	var property peso = 8

}

object camion {

	var property peso = 500

}

