# SlideText



| <img width="722" alt="스크린샷 2021-04-24 오후 1 42 11" src="https://user-images.githubusercontent.com/73557895/115947527-3190f300-a503-11eb-8807-bf8ea9327e19.png"> 	| ![ezgif-3-0b63e4bc87c5](https://user-images.githubusercontent.com/73557895/115947554-656c1880-a503-11eb-9ee9-496bb25ff787.gif) 	|
|----------------------------------------------------------------------------------------------------------------------------------------------------------------------	|--------------------------------------------------------------------------------------------------------------------------------	|
| Code                                                                                                                                                                 	| PreView                                                                                                                        	|


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
            SlideText(text: text, frameWidth: 100, animationDuration: 1, delay: 1)
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
