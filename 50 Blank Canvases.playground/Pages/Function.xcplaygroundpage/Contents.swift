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

//Example of a function

func someFunction(firstParameterName: Int,
                  secondParamterName: Int){
    
    //In the fucntion body (between the curcly brackets firstparametername and secondparamtername refer to the values provided when the function was called
    print(firstParameterName)
    print("---")
    print(secondParamterName)
    print("---")
}

someFunction(firstParameterName: 5, secondParamterName: 7)

someFunction(firstParameterName: 15, secondParamterName: 10)

someFunction(firstParameterName: 1000000, secondParamterName: 1)

func drawRegularPolygon(withSides: Int, sideLength: Int, startX: Int, startY: Int){
    //Find interior angle
    let interior = (withSides - 2) * 180/withSides
    //Find exterior angle
    
    let exterior = 180 - interior
    
    // Move to the starting position
    
    canvas.translate(byX: startX, byY: startY)
    
    // loop for however many sides we have
    
    for _ in 1...withSides {
        
        //Draw the line
        canvas.drawLine(fromX: 0, fromY: 0, toX: sideLength, toY: 0)
        // Translate to the end of the line ( move the turtle )
        
        canvas.translate(byX: sideLength, byY: 0)
        // Rotate
        
        canvas.rotate(by: Degrees(exterior))
    }
    
}
drawRegularPolygon(withSides: 12, sideLength: 50, startX: 100, startY: 100)


PlaygroundPage.current.liveView = canvas.imageView


