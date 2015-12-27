
import UIKit
enum Velocidades: Int { case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    init(velocidadInicial: Velocidades){
        self = .Apagado}
}

class Auto {
    var velocidad: Velocidades
    
    init(){ velocidad = .Apagado}
    
    func cambioVelocidad()->(actual:Int, velocidadEnCadena: String){
        
        switch velocidad {
        case .Apagado: velocidad = .VelocidadBaja
        case .VelocidadBaja: velocidad = .VelocidadMedia
        case .VelocidadMedia: velocidad = .VelocidadAlta
        case .VelocidadAlta: velocidad = .VelocidadMedia
        }
        
        let actual: Int = velocidad.rawValue
        let velocidadEnCadena: String = String(velocidad)
        
        
        return (actual, velocidadEnCadena)}
}

var auto = Auto()
print(auto.velocidad.rawValue, auto.velocidad)

for var i = 0; i < 20; i++ {
    print(auto.cambioVelocidad())
}