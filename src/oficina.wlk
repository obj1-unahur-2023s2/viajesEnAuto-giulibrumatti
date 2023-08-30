

object oficina{
	var remisera1
	var remisera2 
	
	method asignarRemiseras(remisera_a, remisera_b){
			 remisera1 = remisera_a
			 remisera2 = remisera_b
	}
	
	method cambiarPrimerRemiseraPor(remisera){
		remisera1 = remisera
	}
	
	method intercambiarRemiseras(){
		self.asignarRemiseras(remisera2, remisera1)
	}
	
	method remiseraElegidaParaVIaje(clientes, kms){
		
	}
	
}
