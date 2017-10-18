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

let canvas = Canvas(width:600, height:600)

// Position of circles
for i in stride(from: 50, through: 600, by: 100){
    for y in stride(from: 50, through: 600, by: 100){
       
        // Size of circle
        for r in stride(from: 99, through: 20, by: -19){
            
            
    // Color generator
     let c = random(from: 0, toButNotIncluding: 361)
      let s = random(from: 50, toButNotIncluding: 101)
     let b = random(from: 75, toButNotIncluding: 101)
     
        // To prevent similar colours
//    let d = c - 20
//
//            if c == d {
//                let c = c + 20
//            }else {
//
//            }
            
            
            
            // Color
            canvas.fillColor = Color.init(hue: c, saturation: s, brightness: b, alpha: 100)
        // Drawing the circle
            canvas.drawEllipse(centreX: i, centreY: y, width: r, height: r)
          
        
            
            
    
    }
}
}




//let w = 6
//let l = 6
//for _ in 1...canvas.width/50{
//    for _ in 1...canvas.height/50{
//        let r = random(from: 1, toButNotIncluding: 3)
//        let c = random(from: 0, toButNotIncluding: 360)
//        let s = random(from: 50, toButNotIncluding: 101)
//        let b = random(from: 50, toButNotIncluding: 101)
//
//        canvas.defaultLineWidth = r + 1
//
//        canvas.lineColor = Color(hue: c, saturation: s, brightness: b, alpha: 100)
//        
//        if r == 1{
//            canvas.drawLine(fromX: 0, fromY: 0, toX: 50, toY: 50)
//        }else{
//
//            canvas.drawLine(fromX: 50, fromY: 0, toX: 0, toY: 50)
//        }
//
//        canvas.translate(byX: 50, byY: 0)
//        
//    }
//    canvas.translate(byX: -300, byY: 50)
//}



//: **NOTE:** Output will show up in the Debug area.
//:
//: If you don't see this, press **Command-Shift-Y**.
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
