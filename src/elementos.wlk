object castillo {
	var nivelDeDefensa = 150
	
	method nivelDeDefensa() = nivelDeDefensa
	method altura() = 20
	method recibirAtaque(potenciaDeAtaque) { 
		nivelDeDefensa = 0.max(nivelDeDefensa - potenciaDeAtaque) 
	}
	method recibirTrabajo() {
		nivelDeDefensa = 200.min(nivelDeDefensa + 20)
	}
	method recibirValor() = nivelDeDefensa/5
	
}

object aurora {
	var estaViva = true
	
	method altura() = 1
	method recibirAtaque(potenciaDeAtaque) {
		estaViva = not(potenciaDeAtaque >= 10) 
	}
	method recibirTrabajo(){}
	method recibirValor() = 15
}

object tipa {
	var altura = 8
	
	method recibirAtaque(potenciaDeAtaque){}
	method recibirTrabajo () {
		altura ++ 
	}
	method recibirValor() = altura*2
}