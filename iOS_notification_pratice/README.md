## 🟢Notification

- #### NotificationCenter

  등록된 이벤트가 발생하면 해당 이벤트들에 대한 행동을 취하는 것

  앱 내 아무곳에서나 메시지를 던지면 이 메시지를 아무곳에서 받을 수 있음

  싱글턴 인스턴스라서 여러 오브젝트에서 공유

  <u>notification의 중계자 역할</u> : 관찰자에게 정보를 브로드캐스트

  ```swift
  NotificationCenter.default
  ```

  

- <h4>Post</h4>

  전송하는 notification 

  ```swift
  NotificationCenter.default.post(name:"noti", object:"값")
  //noti를 Observer에게 값을 전달
  ```



- #### Observer

  계속해서 name이라는 키 값을 탐지

  옵저버에서 탐지 하고 있다가 "noti"가 오면 수행

  ```swift
  NotificationCenter.default.addObsever(observer:Any, selector:Selector, name: NSNotification.Name?, object:Any?)
  ```

  ```swift
  NotificationCenter.default.addObserver(self, selector: #selector(handleNoti), name: noti, object: nil)
  //noti라는 notification이 오면 selector 실행
  
  @objc func handleNoti(_ notification: NSNotification){
    print("Noti")
  }
  //name, object, userInfo가 넘어옴
  //object는 Optional(값)으로 넘어옴
  ```

  옵저버를 등록한 오브젝트가 해제되면 NotificationCenter 에도 알려줘야 함

  <u>NotificatioCenter는 싱글턴이여서 메모리가 계속 상주하기 때문에 해제를 시켜줘야 함</u>

  ```swift
  notiCenter.removeObserver(self) //옵저버 전체 제거
  
  notiCenter.removeObserver(self, name:"noti", object: nil) //옵저버 하나 제거
  ```

  

