import bicis.*
import accesorios.*

class Deposito {

	const bicicletas = []

	method bicisRapidas() = bicicletas.filter({ bici => bici.velocidadDeCrucero() > 25 })

	method listaDeMarcas() = bicicletas.map({ bici => bici.marca() }).asSet()

	method esNocturno() = bicicletas.all{ bici => bici.tieneLuz() }

	method algunaBicicletaPuedeCargar(peso) = bicicletas.any{ bici => bici.carga() > peso }

	method guardarBici(bicicleta) {
		bicicletas.add(bicicleta)
	}

	method biciMasRapida() = bicicletas.max{ bici => bici.velocidadDeCrucero() }

	method marcaDeBiciMasRapido() = self.biciMasRapida().marca()

	method bicisLargas() = bicicletas.filter{ bici => bici.largoEnCm() > 170 }

	method cargaDeBicisLargas() = self.bicisLargas().sum{ bici => bici.carga() }

	method cantidadDeBicisSinAccesorios() = bicicletas.count{ bici => bici.accesorios().isEmpty() }

	method hayCompanieraDe(biciCompaniera) = bicicletas.any{ bici => bici.esCompanieraDe(biciCompaniera) }

	// / INTENTO DE DESAFÍO
	method hayBicisCompanieras() = bicicletas.any{ bici => self.hayCompanieraDe(bici) }

	method companieraDe(biciCompaniera) = bicicletas.filter{ bici => bici.esCompanieraDe(biciCompaniera) }

	method paresDeBicis() {
		const pares = []
		if (self.hayBicisCompanieras()) {
			const bicisConCompaniera = bicicletas.filter{ bici => self.hayCompanieraDe(bici) }
			bicisConCompaniera.forEach{ bici => pares.add(new ParDeBicis(bicis = #{ bici, self.companieraDe(bici) }))}
			return pares.asSet()
		}
	}

}

class ParDeBicis {

	var property bicis = #{}

}

