import remiseras.*

object ludmila{
	method precioPorKm() = 18	
}

object anamaria{
	var ecoEstable = true
	
	method revertirSitEconomica(){
		ecoEstable = !ecoEstable
	}
	
	method ecoEstable() = ecoEstable
	
	method precioPorKm() = if(ecoEstable){30}else{25}
}

object teresa {
	var precioPorKm = 22
		
	method precioPorKm() = precioPorKm
	
	method precioPorKm(nuevoPrecio){
		precioPorKm = nuevoPrecio
	}
}

object melina{
	var trabajaPara
	
	method trabajaPara() = trabajaPara
	
	method trabajaPara(cliente){
		if(self == cliente){
			self.error("No se puede reemplazar a si misma")
			trabajaPara = cliente
		}
	}
	 
	method precioPorKm() =  trabajaPara.precioPorKm() - 3
}


