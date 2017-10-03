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
let canvas = Canvas(width: 300, height: 400)

// Line width
canvas.defaultLineWidth = 5

canvas.drawShapesWithBorders = false
// Draw the "rungs" of a ladder
for i in stride(from: 0, through: 500, by: 50) {
    
    
    canvas.fillColor = Color(hue: 0, saturation: 100, brightness: i / 5, alpha: 100)
    
    canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: i, width: canvas.width, height: 50)
    
    
    canvas
    
    
    
}
//: **NOTE:** Output will show up in the Debug area.
//:
//: If you don't see this, press **Command-Shift-Y**.
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
