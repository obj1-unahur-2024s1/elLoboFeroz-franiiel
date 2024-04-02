
object feroz {
	var peso = 10
	
	method estaSaludable(){
		return peso.between(20,150)
		}
	method aumentaDePeso(cantidadDePeso){
		peso = peso + cantidadDePeso							
	 }
	 method disminuyeDePeso(cantidadDePeso){
	 	peso = peso - cantidadDePeso
	 }
	 method comer(comida){
	 	self.aumentaDePeso(comida.pesoActual()*10/100)
	 }
	 method correr(){
	 	self.disminuyeDePeso(1) 
	 }
	 
	 method crisis(){
	 	peso = 10
	 }
	 method pesoActual(){
	 	return peso
	 }
	}
	
object caperucita{
	var cantidadDeManzanas = 6
	var peso = 61.2
	method pesoActual(){
		return peso
	}
	method pierde_Manzanas(cantidad){
		cantidadDeManzanas = cantidadDeManzanas - cantidad
		peso = peso - cantidad * 0.2
	}
}

object abuelita{
	const peso = 50
	method pesoActual(){
		return peso
	}
}

object cazador{
	const peso = 80
	method pesoActual(){return peso}
	method disparar(){
		feroz.crisis()
	}
	method matarAlLobo(){
		if(feroz.pesoActual()<=10) feroz.disminuyeDePeso(10) 
	}
}





