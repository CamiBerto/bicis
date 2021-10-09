class Bici {
	var property rodado 
	var property largoEnCm 
	var property marca
	var property accesorios = #{}
	var id = 0
	
	
	
	method altura(){
		return self.rodado() * 2.5 + 15
	}
	
	method velocidadDeCrucero() {
		if(self.largoEnCm() > 120){
			return self.rodado() + 6
		} else {
			return self.rodado() + 2
		}
	}

	
	method carga(){
		return accesorios.sum({c=> c.carga()})
	}
	
	method peso(){
		return self.rodado() /2  + accesorios.sum({c=>c.peso()})
	}
	
	method tieneLuz(){
		return accesorios.any({c =>c.esLuminoso()})
	}
	method agregarAccesorio(accesorio){
		accesorios.add(accesorio)
	}
	
	method cantidadDeAccesoriosLivianos() { 
		return accesorios.count ({ a => a.peso() < 1})
	}
	method id () { return id }
	
	method id (numero) { id = numero }
}