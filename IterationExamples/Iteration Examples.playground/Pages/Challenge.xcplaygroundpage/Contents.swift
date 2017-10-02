//: [Previous](@previous) / [Next](@next)
//: # Challenge
//: Extend the code you wrote on the following page to generate this image:
//:
//: ![challenge](challenge.png "Challenge")
//:
//: ## Required code
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport

//: ## Add your code below

// Create canvas
let canvas = Canvas(width: 300, height: 300)

    
for _ in 1...4 {
    for y in stride(from: 0, to: 300, by: 20) {
        
        y
        
        
        canvas.drawLine(fromX: y, fromY: 0, toX: 300, toY: y)

        
        
        
        canvas
        
    }
    
canvas.translate(byX: 0, byY: 300)
canvas.rotate(by: -90)

}



/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
