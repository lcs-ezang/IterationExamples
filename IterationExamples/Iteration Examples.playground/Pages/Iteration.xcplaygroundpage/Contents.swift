//: [Previous](@previous) / [Next](@next)
//: # Iteration
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport

/*:
 ### Skipping values in a range
 The *stride* function can be combined with a *for-in* loop to move through a range of numbers, while also skipping some values.
 
 This is a *very powerful* concept *(hint, hint)*.
 
 For example, here how to use this type of loop to create a ladder image.
 */
// Create canvas
let eric = Canvas(width: 300, height: 300)

eric.translate(byX: 150, byY: 150)

for i in 1...10{
    
    i
    
    eric.defaultLineWidth = i / 3
    eric.lineColor = Color(hue: 360 - i*36, saturation: 60, brightness: 75, alpha: 100)
    eric.drawLine(fromX: 0, fromY: -125, toX: 0, toY: 125)
    eric.rotate(by: 18)
    
    eric
    
}

eric.lineColor = Color.black
eric.rotate(by: 180)
eric.translate(byX: 0, byY: 100)
eric.drawAxes()

let v = 8
for _ in 1...v{

    eric.rotate(by: Degrees(306 / v))
    eric.drawLine(fromX: 0, fromY: -40, toX: 0, toY: 40)
    
    
    
    
}

//: **NOTE:** Output will show up in the Debug area.
//:
//: If you don't see this, press **Command-Shift-Y**.
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = eric.imageView
