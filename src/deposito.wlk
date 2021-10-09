import bicis.*
import accesorios.* 

class Deposito {
	const bicicletas = #{}

    method bicisRapidas() = bicicletas.filter{bici=>bici.velocidadDeCrucero()>25}
    method listaDeMarcas() = bicicletas.map({bici=>bici.marca()}).asSet()
    method esNocturno() = bicicletas.all{bici=>bici.tieneLuz()}
    method algunaBicicletaPuedeCargar(peso) = bicicletas.any{bici=>bici.carga()>peso}
    method guardarBici(bicicleta) {
    	bicicletas.add(bicicleta)
    }
	
}
