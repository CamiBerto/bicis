class  Farolito {
	method peso() = 0.5
	method carga() = 0
	method esLuminoso() = true
	method esLiviano() = true
	
}
class  Canasto {
	var property volumen
	method peso() = self.volumen() /10
	method carga() = self.volumen()*2
	method esLuminoso() = false
	method esLiviano() = self.peso() < 1
	
}
class  MorralDeBici {
	var property largo
	var property ojoDeGato
	method peso() = 1.2
	method carga() = self.largo() / 3
	method esLuminoso() = self.ojoDeGato()
	method esLiviano() = false
}

/*
	Al agregar mas accesorios, deben contenter los métodos de los accesorios previos para respetar el polimorfismo, en los ejemplos que se dieron:
	A Canasto: habría que agregar un nuevo atributo para identificar si es delantero o trasero. Y para los otros hay que crear nuevas clases que respeten el polimorfismo
*/
	