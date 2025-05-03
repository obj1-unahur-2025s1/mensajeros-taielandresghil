object paquete {
  method estaEntregado(estaEntregadoONo) {
    // Verifica si el paquete ha sido entregado
    return estaEntregadoONo;
  }
  var estaPago = false
  method estaPago() {
    return estaPago
  }
  method estaPago(sePagoONo) {
    estaPago = sePagoONo
  }
  method mensajero(unMensajero) {
    return unMensajero
  }
  method metodoDeEnvioDelMensajero(unMensajero) {
    return unMensajero.metodoDeEnvio()
  }
  method destino(unDestino) {
    return unDestino
  }
  method puedeSerEntregado(mensajero) {
    return puenteDeBrooklyn.puedePasar(mensajero) ||
           laMatrix.puedePasar(mensajero) &&
           self.estaPago() == true
  }
}

object puenteDeBrooklyn {
  method puedePasar(unMensajero) {
    return unMensajero.peso() < 10000 && paquete.estaPago() == true
  }
}

object laMatrix {
  method puedePasar(unMensajero) {
    return unMensajero.puedeLlamar() && paquete.estaPago() == true
  }
}

object roberto {
  var peso = 90
  method peso() {
    return peso
  }
  var metodoDesignado = "bicicleta"
  method metodoDeEnvio() {
    return metodoDesignado
  }
  method metodoDeEnvio(unMetodo) {
    metodoDesignado = unMetodo
  }
  method viajeEnBicicleta() {
    peso += 5
    metodoDesignado = "bicicleta"
  }
  var cantidadDeAcoplados = 0
  method aclopar(unAcoplado) {
    cantidadDeAcoplados += unAcoplado
  }
  method viajeEnCamion() {
    peso += 5000 * cantidadDeAcoplados
    metodoDesignado = "camion"
  }
  method puedeLlamar() {
    return false
  }
}

object chuckNorris {
  method peso() {
    return 80
  }
  method puedeLlamar() {
    return true
  }
}

object neo {
  method peso() {
    return 0
  }
  var credito = 0
  method credito() {
    return credito
  }
  method credito(unCredito) {
    credito = unCredito
  }
  method puedeLlamar() {
    return credito > 0
  }
}

object empresa {
  const listaMensajeros = []
  method mensajeros() {
    return listaMensajeros
  }
  method contratarMensajero(mensajeroContratado) {
    listaMensajeros.add(mensajeroContratado)
  }
  method despedirMensajero(mensajeroDespedido) {
    if (listaMensajeros.contains(mensajeroDespedido)) {
      listaMensajeros.remove(mensajeroDespedido)
    }
  }
  method despedirTodosLosMensajer() {
    listaMensajeros.removeAll()
  }
  method mensajeriaEsGrande() {
    return listaMensajeros.size() > 2
  }
  method elPrimPuedeEntregar() {
    return paquete.puedeSerEntregado(listaMensajeros.first())
  }
  method pesoDelUltimoMensajero() {
    return listaMensajeros.last().peso()
  }
  method estaEnLaEmpresa(unMensajero) {
    return listaMensajeros.contains(unMensajero)
  }
}
