

  
  
  
 object feroz {
	var peso = 10
	
	method estaSaludable(){
		return peso.between(20,150)
		}
	method aumentaDePeso(cantidadDePeso){
		peso = peso + cantidadDePeso							
	 }
	 method disminuyeDePeso(cantidadDePeso){
	 	peso = 0.max(peso - cantidadDePeso)
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
	  method soplarCasa(tipoDeCasa,cantidadDeOcupantes){
	 	self.disminuyeDePeso(tipoDeCasa.resistencia() + cantidadDeOcupantes * chanchito.pesoActual())
	}
}
object caperucita{
	var peso = 60 + canasto.cantidadDeManzanas() * manzana.peso()
	method pesoActual(){
		return peso
	}
	method disminuirManzanas(cantidad){
		canasto.cambiarCantidadDeManzanas(canasto.cantidadDeManzanas() - cantidad)
		peso = peso - cantidad * manzana.peso()
	}
}

object canasto{
	var cantidadActual = 6
	method cantidadDeManzanas(){
		return cantidadActual
	}
	method cambiarCantidadDeManzanas(cantidad){
		cantidadActual = cantidad
	}
}
object manzana{
	method peso() = 0.2
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



 
object chanchito{
	const peso = 20
	method pesoActual(){
		return peso
	}
}
object casaDePaja{
	method resistencia(){return 0}
}

object casaDeMadera{
	method resistencia(){return 5}
}
object casaDeLadrillo{
	var cantidadDeLadrillos = 5
	var resistencia = cantidadDeLadrillos * 2 
	method resistencia(){return resistencia}
	method cambiarCantidadDeLadrillos(cantidad){
		cantidadDeLadrillos += cantidad
		resistencia+= cantidadDeLadrillos * 2
	}
}






