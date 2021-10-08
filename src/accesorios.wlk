class  Farolito {
	method peso(){return 0.5}
	method carga(){return 0}
	method luminoso(){return true}
	method esLiviano(){return true}
	
}
class  Canasto {
	var property volumen
	method peso(){return self.volumen() /10}
	method carga(){return self.volumen()*2}
	method luminoso(){return false}
	method esLiviano(){return self.peso() < 1}
	
}
class  MorralDeBici {
	var property largoEnCm
	var property ojoDeGato
	method peso() = 1.2
	method carga(){return self.largoEnCm() / 3}
	method luminoso(){return self.ojoDeGato()}
	method esLiviano(){return false}
	
	
}