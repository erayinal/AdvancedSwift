//
//  MusicianClass.swift
//  AdvancedSwift
//
//  Created by Eray İnal on 19.03.2024.
//

import Foundation

class MusicianClass {
    
    var name : String
    var age : Int
    var instrument : String
    
    //.3 Bu variable'ları tanımladık ama bunlar için 'initializer' fonksiyonu yani Constructor yazmamız lazım.
    init(name:String, age:Int, instrument:String){
        self.name = name
        self.age = age
        self.instrument = instrument
    }
    
    
    
    
    
    //7 Function vs Mutating Function: Biz Class'lar içerisinde bir fonksiyon yazabiliyoruz ve Class içerisindeki bu fonksiyonlarda mesela 'age'i 1 artırabiliriz. Ama Struct içerisine o fonksiyonu 'mutating fonksiyon' olarak tanımlarsak eğer ancak o şekilde age'i artırabiliriz
    func happyBirthday(){
        self.age += 1
    }
    
}
