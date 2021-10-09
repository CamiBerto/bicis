class  Farolito {
	method peso() = 0.5
	method carga(){return 0}
	method esLuminoso(){return true}
	method esLiviano(){return true}
	
}
class  Canasto {
	var property volumen
	method peso(){return self.volumen() /10}
	method carga(){return self.volumen()*2}
	method esLuminoso(){return false}
	method esLiviano(){return self.peso() < 1}
	
}
class  MorralDeBici {
	var property largo
	var property ojoDeGato
	method peso() = 1.2
	method carga(){return self.largo() / 3}
	method esLuminoso(){return self.ojoDeGato()}
	method esLiviano(){return false}
}

/*
	Al agregar mas accesorios, deben contenter los metodos de los accesorios previos para respetar el polimorfismo, en los ejemplos que se dieron:
	A Canasto: habria que agregar un nuevo atributo para identificar si es delantero o trasero. Y para los otros hay que crear nuevas clases que respenten el poli
*/
	