## 🟢Closure

 func 키워드와 함수의 이름이 없는 함수 (익명함수)

<u>스스로 호출이 불가능</u>

변수, 상수 등으로 저장하고 전달인자로 전달이 가능

```swift
/*
{ (매개변수 목록) -> 반환타입 in   .. 반환타입이 없다면 void
    실행 코드
}
*/
var giveNoFunc = {() ->in ... }
```



<h4>함수 vs 클로저</h4>

*함수는 이름이 있는 클로저

|       함수       |     클로저     |
| :--------------: | :------------: |
|   이름이 있다.   |  이름이 없다.  |
| func 키워드 존재 | in 키워드 존재 |

```swift
// function
func sumFunction(a: Int, b: Int) -> Int {
  return a+b
}
var sumResult: Int = sumFunction(a: 1, b: 2)

// closure
var sum: (Int, Int) -> Int = { (a: Int, b: Int) -> Int in
	return a+b
}
sumResult = sum(1,2)

//*클로저는 return값 생략 가능. 마지막에 있는 값을 반환 값으로 인식
var printHello = { (name : String) -> String in
	 "Hello \(name)"        
}
```



#### 언제 closure을 사용할까

1. return값으로 반환되는 타입을 추측가능

2. 변수의 타입을 명시했다면 매개변수의 타입도 생략 가능

   ```swift
   //$ 사인을 통해 매개변수를 0 부터 순서대로 접근
   var sayHello : (String)->String = { "Hello \($0)" }
   ```

3. 축약 형태가 가독성이 좋고 관리가 편리

   ```swift
   var printHello = { (name : String) -> String in
   	return "Hello \(name)"        
   }
   // 축약 후
   var sayHello : (String)->String = { "Hello \($0)" }
   ```

4. 함수의 전달인자로 사용

   ```swift
   //함수 내부에서 원하는 코드블럭을 실행
   //*더하기
   let add: (Int, Int) -> Int
   add = { (a: Int, b: Int) in
       return a + b
   }
   
   func calculate(a: Int, b: Int, method: (Int, Int) -> Int) -> Int {
       return method(a, b)
   }
   
   calculated = calculate(a: 50, b: 10, method: add)
   ```

