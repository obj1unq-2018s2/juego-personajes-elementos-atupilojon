
import jugadoresPersonajes.*

object ballesta {
	var property flechas = 10
	
	method estaCargada() { return flechas > 0 }
	method registrarUso() { flechas -= 1 }
	method potencia() { return 4 }
	
}

object jabalina {
	var property carga = true
	
	method estaCargada() { return carga	}
	method registrarUso() { carga = false }
	method potencia() { return 30 }
}