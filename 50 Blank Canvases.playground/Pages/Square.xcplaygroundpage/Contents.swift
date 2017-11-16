//: [Previous](@previous)
//: # A Blank Canvas
//:
//: Use this page to experiment. Have fun!
/*:
 ## Required code
 
 The following statements are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 400, height: 400)

/*:
 ## Add your code below
 
 Be sure to write human-readable code.
 
 Use whitespace and comments as appropriate.
 */


// Draw a square using a metaphor of a "turtle"

// Step 1: move to the starting point

canvas.translate(byX: 75, byY: 0)

canvas.drawAxes()
canvas.defaultLineWidth = 10

// Use a loop to draw four sides

for _ in 1...6 {
    
    canvas.drawLine(fromX: 0, fromY: 0, toX: 200, toY: 0)
    canvas.translate(byX: 200, byY: 0)
    canvas.rotate(by: 60)
}


/*:
 ## Use source control
 To keep your work organized, and receive feedback, source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source_control.png "Source Control")
 */
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right.
 
 Please do not remove.
 
 If you don't see output, remember to show the Assistant Editor, and switch to Live View:
 
 ![timeline](timeline.png "Timeline")
 */
// Don't remove the code below
PlaygroundPage.current.liveView = canvas.imageView

