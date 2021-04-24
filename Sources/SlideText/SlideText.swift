import SwiftUI

public struct SlideText : View {
    var text : String
    var frameWidth : CGFloat
    var animationDuration : Double = 5
    var delay : Double = 0
    
    public init(text : String, frameWidth : CGFloat,animationDuration : Double = 5, delay : Double = 0) {
        self.text = text
        self.frameWidth = frameWidth
        self.animationDuration = animationDuration
        self.delay = delay
    }
    
    @State private var startAnimation : Bool = false
    public var body: some View{
        Text(text)
            .fixedSize()
            .frame(width: frameWidth, alignment: startAnimation ? .trailing : .leading)
            .clipped()
            .onAppear { self.startAnimation.toggle() }
            .animation(Animation.linear(duration: animationDuration).delay(delay).repeatForever(autoreverses: true))
    }
}
