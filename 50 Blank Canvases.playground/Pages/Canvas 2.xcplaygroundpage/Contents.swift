//: [Previous](@previous) / [Next](@next)
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
let canvas = Canvas(width: 400, height: 300)

/*:
 ## Add your code below
 
 Be sure to write human-readable code.
 
 Use whitespace and comments as appropriate.
 */
//Illustrate random noise generation

for x in stride(from: 0, through: 200, by:1) {
    
    // Decide how tall to draw the line
    
    let toY = random(from: 0, toButNotIncluding: 101)
    
    //Draw a vertical line
    
    canvas.drawLine(fromX: x, fromY: 0, toX: x, toY: toY )
    
    
}

// Learn about data types
var name = "Lakefield" //assignment statement
name = "Lakefield College School"

// Create a number
let value = 4    //type inference guesses integer
let anotherValue : Int = 5

// Create a number that is not an integer
var decimalValue = 4.5
decimalValue = 5
let anotherDecimalValue : Double = 5.5

// What are the maximum and minimum possible values?

Int.min
Int.max




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

