//: Reto de programación 2, Velocimetro.

import UIKit

// generación de la enumeración de tipo entero.
enum Velocidades : Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50 , VelocidadAlta = 120
    
    init (velocidadInicial: Velocidades) {
     self = velocidadInicial
    }
    
}
class Auto {
    //Instancia
    var velocidad : Velocidades
    
    // Inicialización
    
    init() {
        self.velocidad = Velocidades.init(velocidadInicial:Velocidades.Apagado)
    }
    
    // comienza la función
    
    func cambioDeVelocidad () -> (actual: Int, velocidadEnCadena: String) {
    
    var actual : Int
    var velocidadEnCadena : String
    
    switch velocidad {
 
    case .Apagado:
    actual = velocidad.rawValue
        velocidadEnCadena = "\(Velocidades.Apagado)"
        self.velocidad = Velocidades.VelocidadBaja
        break
    case .VelocidadBaja:
        actual = velocidad.rawValue
        velocidadEnCadena = "\(Velocidades.VelocidadBaja)"
        self.velocidad = Velocidades.VelocidadMedia
        break
    case .VelocidadMedia:
        actual = velocidad.rawValue
        velocidadEnCadena = "\(Velocidades.VelocidadMedia)"
        self.velocidad = Velocidades.VelocidadAlta
        break
    case .VelocidadAlta:
        actual = velocidad.rawValue
        velocidadEnCadena = "\(Velocidades.VelocidadAlta)"
        self.velocidad = Velocidades.VelocidadMedia
        break
        }
    return (actual, velocidadEnCadena)
    }
    
}

var auto = Auto()

for i in 1...20 {
    var tupla = auto.cambioDeVelocidad()
    
    print("\(i). \(tupla.actual), \(tupla.velocidadEnCadena)")
}





