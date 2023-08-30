import clientes.*

object roxana{
	
	method precioDelViaje(cliente, km) = cliente.precioPorKm() * km
	
}

object gabriela{
	
	method precioDelViaje(cliente, km) = (cliente.precioPorKm() * 1.2) * km
}

object mariela{
	method precioDelViaje(cliente, km) = 50.max(cliente.precioPorKm() * km)
}

object juana{
	method precioDelViaje(_, km){
		if(km < 8){
			return 100
		}
		return 200
	}
}

object lucia{
	var reemplazada 
	
	method reemplazada() = reemplazada
	
	method reemplazada(nuevaRemisera){
		if(self == nuevaRemisera) 
			self.error("No se puede reemplazar a si misma")
			
		reemplazada = nuevaRemisera
		
	}
	
	method precioDelViaje(cliente, km) = reemplazada.precioDelViaje(cliente, km)
	
}