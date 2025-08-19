// Ejercicio 1: Pepón
object pepon {
  var energy = 30

//getter 
  method decirEnergia() {
	return energy
  }

  method comer(alimento) {
    energy = energy + (alimento.aporteEnergia() / 2)
  }

  method fly(km) {
    energy = energy - 20 - (2 * km)
  }
}

// Ejercicio 2: Roque
object roque {
  var mascota = pepita
  var vecesQueAlimento = 0

//getter mascota
	method miMascota {
	return mascota
	}

  // asignar una nueva mascota y reinicia el contador
  method asignarMascota(_mascota) {
    mascota = _mascota
    vecesQueAlimento = 0
  }

  // Alimenta a la mascota y registra la acción
  method alimentar(comida) {
    vecesQueAlimento = vecesQueAlimento + 1
    mascota.comer(comida)
  }

  // la cantidad de veces que alimentó a la mascota
  method cenas() = vecesQueAlimento
}

object pepita {
	var energia = 100
	
	method comer(comida) {
		energia = energia + comida.energiaQueAporta()
	}
	
	method volar(distancia) {
		energia = energia - 10 - distancia
	}
	
	method energia() {
		return energia
	}
}

object alpiste {
	method energiaQueAporta() {
		return 20
	}
}

object manzana {
	var madurez = 1
	const base = 5
	
	method madurez() {
		return madurez
	}
	
	method madurez(_madurez) {
		madurez = _madurez
	}
	
	method madurar() {
		madurez = madurez + self.energiaQueAporta() * 0.1
	}
	
	method energiaQueAporta() {
		return base * madurez
	}
	
}
