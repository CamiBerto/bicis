class Bici {
	var property rodado 
	var property largoEnCm 
	var property marca
	var property accesorios = []
	var id = 0
	
	
	
	method altura() = self.rodado() * 2.5 + 15
	
	
	method velocidadDeCrucero() =  if(self.largoEnCm() > 120){self.rodado() + 6} else { self.rodado() + 2}

	
	method carga() = accesorios.sum{c=> c.carga()}
	
	
	method peso() = self.rodado() /2  + accesorios.sum{c=>c.peso()}
	
	
	method tieneLuz() = accesorios.any{c =>c.esLuminoso()}
	
	method agregarAccesorio(accesorio){
		accesorios.add(accesorio)
	}
	
	method cantidadDeAccesoriosLivianos() = accesorios.count{ a => a.peso() < 1}

	method id () = id 
	
	method id (numero) { id = numero }

	method esCompanieraDe(biciCompaniera) = marca == biciCompaniera.marca() && (biciCompaniera.largoEnCm() - largoEnCm).abs() <= 10 && self != biciCompaniera

}