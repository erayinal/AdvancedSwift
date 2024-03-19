//
//  main.swift
//  AdvancedSwift
//
//  Created by Eray İnal on 19.03.2024.
//

//1 Struct
//.1 Struct ile Class neredeyse aynıdır fakat en büyük fark 'Inheritance'da yatıyor. Struct'da inheritance yok ve neredeyse Struct'ın tek dezavatajı bu. Inheritance'a ihytiyaç duyuyorsak Class kullanmamız gerekiyor. Geri kalan alanlarda Struct Class'dan daha iyidir
//..1 Struct'ın en büyük teknik fark:   Class -> Ram'de Heap kullanılır(FIFO)                                                                                                             Struct -> Ram'da Stack kullanılır(FILO)

//...1 Class -> Reference Type                                                                                                                           Struct -> ValueType

//....1 Struct'lar sayesinde immutable(değiştirilemez) değerler oluşturabiliriz. Fakat
//.....1 Class'larda Objective-C kullanılırken Struct'ta geçerli değil Swift yazmamız gerekiyor

//......1 Apple diyorki: Sen bir sınıfı Struct tanımla, ben sana lazım olursa Class'a çevirmene izin vericem. Peki ne zaman lazım olabilir? İnheritance lazımsa veya reference type kullanmak istersek(ki çoğu zaman ValueType ile çalışmak daha mantıklı) veya objective-C ile ilgili bir şey yapıyoruzdur

//2 İki tane dosya oluşturacağız. Yandan 'AdvancedSwift'e sağ tık yapıp 'New File...'a basıp Swift File'ı seçiyoruz. Birincisinin adı MusicianStruct olacak, ikincisinin adı MusicianClass olacak.
//3 Oluşturduktan sonra MusicianClass'a gidelim ve yazmaya başlayalım




import Foundation

let classJames = MusicianClass(name: "James", age: 50, instrument: "Guitar")

let structJames = MusicianStruct(name: "James", age: 50, instrument: "Guitar")


//5 Biliyoruz ki biz hem classJames'i hem de structJames'i let olarak tanımladık ve normalde let değiştirilemez. Referance type'da classJames.age ile yaşı değiştirebiliriz çünkü classJames sınıfında bu değişkenleri 'var' olarak tanımladık. Ama Struct içerisinde 'var' da olsa 'let' de olsa değiştiremeyiz,yani struct'ta kullandığımız Value Type'da structJames.age ile yaşı değiştiremeyiz çünkü structJames'i 'let' olarak tanımladık, direkt hata verir. Bu yüzden Struct'lar immutability'i gerçekten uygulayabilmemize olanak sağlıyor. StructJames içerisindeki bir değeri değiştirebilmemiz için 'var structJames' olarak tanımlamamız gerekiyor.


//6 REFERENCE vs VALUE. Class'larda reference kullandığımız için, mesela bir class'ın kopyasını oluşturduğumuzda o kopyada yapılan değişiklikler Class'ı da etkiler. Ama Struct'ta böyle değildir yani kopyada yapılan değişiklik asıl olanı etkilemez.
let copyOfClassJames = classJames
var copyOfStructJames = structJames

print(copyOfClassJames.age)
print(copyOfStructJames.age)

copyOfClassJames.age = 52
copyOfStructJames.age = 52

print(copyOfClassJames.age)
print(copyOfStructJames.age)

print(classJames.age)
print(structJames.age)







