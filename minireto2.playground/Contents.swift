import UIKit

enum Velocidades : Int{
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades ){
        self = velocidadInicial
    }
}

class Auto{
    var velocidad = Velocidades.init(velocidadInicial: Velocidades.Apagado)
    
    func cambioDeVelocidad()-> ( actual : Int, velocidadEnCadena: String){
        if velocidad == .Apagado{
            velocidad = .VelocidadBaja
        } else if velocidad == .VelocidadBaja{
            velocidad = .VelocidadMedia
        }else if velocidad == .VelocidadMedia{
            velocidad = .VelocidadAlta
        }else{
            velocidad = .VelocidadMedia
        }
        return (velocidad.rawValue, "\(velocidad)")
    }
}

var auto = Auto()

print("\(auto.velocidad.rawValue), \(auto.velocidad)")
var rango = 1...20
for _ in rango{
    auto.cambioDeVelocidad()
    print("\(auto.velocidad.rawValue), \(auto.velocidad)")
}

