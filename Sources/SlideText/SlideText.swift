import SwiftUI

public struct SlideText : View {
    var text : String
    var frameWidth : CGFloat
    
    var fontSize : CGFloat = 17
    var fontWeight : FontWeight = FontWeight(rawValue: "") ?? .regular
    var animationDuration : Double = 5
    var delay : Double = 0
    
    public init(text : String, frameWidth : CGFloat, fontSize : CGFloat = 17, fontWeight: FontWeight = FontWeight(rawValue: "") ?? .medium, animationDuration : Double = 5, delay : Double = 0) {
        self.text = text
        self.frameWidth = frameWidth
        
        self.fontSize = fontSize
        self.fontWeight = fontWeight
        self.animationDuration = animationDuration
        self.delay = delay
    }
    
    @State private var startAnimation : Bool = false
    public var body: some View{
        Group{
            switch fontWeight.rawValue{
            case "light" :
                Text(text)
                    .font(.system(size: fontSize))
                    .fontWeight(.light)
                
            case "regular":
                Text(text)
                    .font(.system(size: fontSize))
                    .fontWeight(.regular)
                
            case "medium":
                Text(text)
                    .font(.system(size: fontSize))
                    .fontWeight(.medium)
                
            case "bold":
                Text(text)
                    .font(.system(size: fontSize))
                    .fontWeight(.bold)
                
            case "heavy":
                Text(text)
                    .font(.system(size: fontSize))
                    .fontWeight(.heavy)
                
            case "black":
                Text(text)
                    .font(.system(size: fontSize))
                    .fontWeight(.black)
                
            default:
                Text(text)
                    .font(.system(size: fontSize))
                    .fontWeight(.regular)
            }
        }
        .fixedSize()
        .frame(width: frameWidth, alignment: startAnimation ? .trailing : .leading)
        .clipped()
        .onAppear { self.startAnimation.toggle() }
        .animation(Animation.linear(duration: animationDuration).delay(delay).repeatForever(autoreverses: true))
    }
}

public enum FontWeight: String {
    case light = "light"
    case regular = "regular"
    case medium = "medium"
    case bold = "bold"
    case heavy = "heavy"
    case black = "black"
    
}
