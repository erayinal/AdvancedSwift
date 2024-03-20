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






//8 TUPLE: Birden fazla değişkeni/veriyi aynı koleksiyon içerisinde kullanmamızı sağlıyor. Böyle söyleyince kulağa dizi gibi gelebilir. İkili üçlü verileri tutmakta kullanılır, mesela enlem-boylam veya piksel(1250x2200) veya xyz kordinatı. Alakadar birşeyleri göstermek için kullanılır
let myTupple = (1,2)
myTupple.0
let myTupple2 = (3 , [12,54,80], 4)
myTupple2.1[0]

//.8 alacağı variable türlerini de önceden belirleyebiliriz(pre-defined)
let predefinedTupple : (String, Bool)

//..8 Bu içerideki variablelara isim de verebiliriz:
let namedTupple = (name:"Eray" , age:"22")






//9 Guard Let vs If Let: Hemen hemen ikisi de aynı şeyler ama Guard'da gerçekten bir şeyi koruma güdüsü var, daha negatif. If Let daha pozitif
let myString = "5"

func convertToIntegerGuard(stringInput:String) -> Int{  // Guardı kendimize daha çok güvendiğimiz yerlerde kullanırız
    guard let myInteger = Int(stringInput) else {   // Burada sayıyı integer'a çevirmesi kesindir hatta bu yüzden aşağıda return bile edebiliriz ki olurda çeviremezsen 0 çevir
        return 0
    }
    return myInteger
}


func convertToIntegerIf(stringInput:String) -> Int{
    if let myInteger = Int(stringInput){
        return myInteger
    }else{
        return 0
    }
    
}






//Switch Case

let myNum = 11
let myRemainder = myNum%3
switch myRemainder{
case 1...3:     // 1 ile 3 arasındaysa bunu yazdırır
    print("It's 1-3")
case 4:
    print("It's 4")
case 5:
    print("It's 5")
default:
    print("None of them")
}






//Breakpoint: // Kodu istediğimiz yerden çalıştırmaya yarar, satır numarası üzerine tıklayarak ekleyip, basılı tutup sürükleyip çıkartabiliriz
var x = 5
print(x)
x += 1
print(x)







