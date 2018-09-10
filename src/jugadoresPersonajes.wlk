
import elementos.*
import armas.*

object luisa {
	var property personajeActivo = null
	
	method aparace(elemento) {personajeActivo.encontrar(elemento)}
}


object floki {
	var property arma = ballesta
	
	method encontrar(elemento) {
	    if (arma.estaCargada()) {
	        elemento.recibirAtaque(arma.potencia()) 
	        arma.registrarUso()
	    }
	}
}


object mario {
	var property valorRecolectado = 0
	var ultimoElemento = null
	
	method encontrar(elemento) {
	    valorRecolectado += elemento.valorQueOtorga()
	    elemento.recibirTrabajo()
	    ultimoElemento = elemento
	}
	method esFeliz() {
		return (valorRecolectado >= 50 || ultimoElemento.altura() >= 10)
	}
}


object noHayPersonaje {
	// no hace falta ponerle ningún método, es solamente para marcarle a Luisa que no tiene ningún personaje activo
}

