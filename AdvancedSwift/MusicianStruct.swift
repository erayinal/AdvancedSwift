//
//  MusicianStruct.swift
//  AdvancedSwift
//
//  Created by Eray İnal on 19.03.2024.
//

import Foundation

struct MusicianStruct {
    
    var name : String
    var age : Int
    var instrument : String
    
    //4 Class içerisinde constructor yazmamız LAZIM iken burada constructor yazmamıza gerek yok. Ama bunun gerek olmaması bu class örneği oluştururken değerleri boş bırakabileceğimiz anlamına gelmez. Yani tıpkı class örneği oluştururken yaptığımız gibi burada da MusicianClass(name : age : instrument) yazmamız lazım bu alanları doldurucaz. Yani biz bunu otomatik oluşturuluyor gibi düşünebiliriz
    
    
    //.7 Burada değiştirebilmek için 'mutating func' yapmamız lazım yoksa hata verir.
    mutating func happyBirthday(){
        self.age += 1
    }
    
    
}
