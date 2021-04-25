# SlideText



| <img width="726" alt="스크린샷 2021-04-25 오후 6 25 43" src="https://user-images.githubusercontent.com/73557895/115988292-e9053280-a5f3-11eb-98c6-27e08efcaccf.png"> 	| ![ezgif-3-f92f394bc955](https://user-images.githubusercontent.com/73557895/115988289-e60a4200-a5f3-11eb-9f59-97966d4c2f54.gif) 	|
|----------------------------------------------------------------------------------------------------------------------------------------------------------------------	|--------------------------------------------------------------------------------------------------------------------------------	|
| Code                                                                                                                                                                 	| PreView                                                                                                                        	|                                                                                               	|

<img width="715" alt="스크린샷 2021-04-24 오후 1 37 54" src="https://user-images.githubusercontent.com/73557895/115947525-30f85c80-a503-11eb-8a9e-5d35fd2ec4f6.png">

## Code
```swift
import SwiftUI
import SlideText

struct SlideText_Test: View {
    var text : String = "SwiftUI-SlideText Test"
    var body: some View {
        VStack{
            SlideText(text: text, frameWidth: 100)
            SlideText(text: text, frameWidth: 150, fontSize: 30, fontWeight: .bold, animationDuration: 5, delay: 1)
        }
    }
}
```
### How To Use
- text : which one you want to show
- frameWidth : frameWidth
  - I want to delete this and just follow the view size later
- animationDuration : animationDuration
- delay : when the animation reaches the end How long to wait 
