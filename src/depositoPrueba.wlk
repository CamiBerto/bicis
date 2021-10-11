import bicis.*
import accesorios.* 

class Deposito {
	const bicicletas = []
	const bicicletasLuz = []
	var property bicisCompanieras = #{}

    method guardarBici(bicicleta) {
    	bicicletas.add(bicicleta)
    }

    
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
	
}