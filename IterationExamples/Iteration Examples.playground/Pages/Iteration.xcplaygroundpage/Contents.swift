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
let canvas = Canvas(width: 360, height: 100)

// Line width
canvas.defaultLineWidth = 5

canvas.drawShapesWithBorders = false

for i in stride(from: 0, through: 360, by: 1) {
    
    
    canvas.fillColor = Color(hue: i, saturation: 100, brightness: 100, alpha: 100)
    
    canvas.drawRectangle(bottomLeftX: i, bottomLeftY: 0, width: 1, height: canvas.height)
    
    
    canvas
    
    
    
}

//: HI

//: **NOTE:** Output will show up in the Debug area.
//:
//: If you don't see this, press **Command-Shift-Y**.
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
