## 🟢Properties

프로퍼티는 값을 특정 클래스, 구조체, 열거형과 연결한다.

<u>📌프로퍼티에는 크게 세가지</u>

- Stored Property(저장 프로퍼티)

  상수와 변수값을 인스턴스의 일부로 저장. 클래스와 구조체에서만 사용.

- Computed Property(연산 프로퍼티)

  값을 저장하기 보다는 연산. 그때그때 특정 연산은 수행하여 값을 반환. 클래스, 구조체, <u>**열거형**</u>에서 사용.

- Type Property(타입 프로퍼티)

  타입자체와 연결하는 프로퍼티

  

#### 📍Stored Property(저장 프로퍼티)

클래스와 구조체의 인스턴스의 일부가 되는 상수, 변수 (상수 프로퍼티, 변수 프로퍼티)

저장할때 선언할 기본값을 줄 수 있음.

- **구조체**

  ```swift
  struct FixedLengthRange {
    var firstValue: Int //변수 프로퍼티
    let length: Int //상수 프로퍼티
  }
  //firstValue, length 저장 프로퍼티
  
  var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)
  //만약 초기값을 지정해줬다면 FixedLengthRange()로 선언해도 됨.
  
  rangeOfThreeItems.firstValue = 6
  rangeOfThreeItems.length = 10//상수 저장 프로퍼티이기 때문에 값을 변경할 수 없음 -> error
  
  let rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)
  //구조체의 인스턴스가 let으로 선언되면 모든 프로퍼티가 let으로 선언된 것과 같음
  
  rangeOfThreeItems.firstValue = 6//error
  rangeOfThreeItems.length = 10//error
  ```



- **클래스**

  ```swift
  class FixedLengthRange {
    var firstValue: Int
    let length: Int
  
    //클래스는 저장 프로퍼티들에게 초기값이 없다면 init이 반드시 필요.
    init(firstValue : Int, length:Int) {
      self.firstValue = firstValue
      self.length = length
    }
  }
  
  var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)
  
  rangeOfThreeItems.firstValue = 3
  rangeOfThreeItems.length = 10//error
  
  
  let rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)
  
  rangeOfThreeItems.firstValue = 3
  rangeOfThreeItems.length = 10//error
  
  /*
  *클래스는 let으로 선언해도 에러가 나지 않음!
  클래스는 Reference type이기 때문에 원본에 바로 접근이 가능.
  원본이 firstValue는 var이기 때문에 여전히 값의 변경이 가능하지만, length는 let으로 선언되어 있어 바꾸지 못함.
  ```



- **구조체와 클래스의 차이**

  클래스는 원본에 바로 접근이 가능하기 때문에 인스턴스의 타입과 상관없지만 구조체는 인스턴스의 타입에 영향을 받음.

  <u>구조체의 경우에 인스턴스의 타입이 let면 저장프로퍼티의 타입 상관없이 값의 변경이 불가능.</u>



#### 📍Lazy Stored Properties(게으른 저장 프로퍼티)

값이 사용되기 전까지 값이 계산되지 않는 프로퍼티.

lazy 키워드 사용

```swift
class DataImporter {//외부파일에서 데이터를 가져오는 클래스
  var filename = "data.txt"
}

class DataManager {//데이터 관리하는 클래스
  //저장프로퍼티들은 초기값이 있으므로 init이 없어도 됨.
  lazy var importer = DataImporter()
  var data = [String]()
}

let manager = DataManager()
manager.data.append("Some data")
manager.data.append("Some more data")

//**DataImporter의 인스턴스인 importer프로퍼티는 생성되지 않음. lazy이기 때문에

print(manager.importer.filename)
//importer프로퍼티에 처음 액세스 할 때 비로소 DataImporter인스턴스인 importer가 만들어짐.
```



- **lazy 프로퍼티는 왜 사용할까?**

  더욱 <u>합리적</u>이고 <u>적절한</u> 순간에 생성하기 위해서

  잘 활용하면 성능도 올라가고 공간낭비 또한 줄일 수 있음.



- **lazy 프로퍼티는...**

  1. 항상 변수로 선언해야함 (var로 선언해야만 함!)

     let으로 선언한 프로퍼티는 초기화를 함과 동시에 값을 가져야 하기 때문에 lazy프로퍼티가 될 수 없음.

     lazy프로퍼티는 **<u>값이 필요한 순간</u>**에 초기화를 해야함.

  2. lazy프로퍼티가 초기화 되지 않은 상태에서 여러 쓰레드가 동시에 액세스 한다면, 한번만 초기화 된다는 것을 보장할 수 없음.