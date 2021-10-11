import bicis.*
import accesorios.* 

class Deposito {
	const bicicletas = []
	const bicicletasLuz = []
	var property bicisCompanieras = #{}

    method bicisRapidas() = bicicletas.filter({bici=>bici.velocidadDeCrucero()>25})

    method listaDeMarcas() = bicicletas.map({bici=>bici.marca()}).asSet()

    method esNocturno() = bicicletas.all{bici=>bici.tieneLuz()}

    method algunaBicicletaPuedeCargar(peso) = bicicletas.any{bici=>bici.carga()>peso}

    method guardarBici(bicicleta) {
    	bicicletas.add(bicicleta)
    }

    method biciMasRapida() = bicicletas.max{bici=>bici.velocidadDeCrucero()}

    method marcaDeBiciMasRapido() = self.biciMasRapida().marca()

 	method bicisLargas() = bicicletas.filter{bici=>bici.largoEnCm() > 170}

 	method cargaDeBicisLargas() = self.bicisLargas().sum{bici=>bici.carga()}

	method cantidadDeBicisSinAccesorios() = bicicletas.count{bici=>bici.accesorios().isEmpty()}
    
	method hayCompanieraDe(biciCompaniera) = bicicletas.any{bici=>bici.esCompanieraDe(biciCompaniera)}
	
	method hayCompanieras(){
		return bicicletas.any{bici => self.hayCompanieraDe(bici)}
	}
	method indiceDeBicis(){
		return (0..bicicletas.size()-1).asList()
	}
	method numCompanieros(){
		return self.indiceDeBicis().filter({bici => self.hayCompanieraDe(bicicletas.get(bici))}).asList()
	}
	method encontrarSuPar(compa){
		var par = [compa].find({bici => self.hayCompanieraDe(bicicletas.get(bici))})
		bicisCompanieras = bicisCompanieras + #{bicicletas.get(par), bicicletas.get(compa)}
	}
	method agregarTodosLosPares(){
		self.numCompanieros().forEach{bici=> self.encontrarSuPar(bici)}
	}
	method parDeCompanieras(){
		self.agregarTodosLosPares()
		return bicisCompanieras.asList()
	}
	method bicisConLuz(){
		return  bicicletas.filter{c=>c.tieneLuz()}
	}
	method bicisSinLuz(){
		return  bicicletas.filter{c=>!c.tieneLuz()}
	}
	method seHizoLaLuz(){
		return ( self.bicisSinLuz() + self.bicisConLuz() ) == bicicletas
	}
}