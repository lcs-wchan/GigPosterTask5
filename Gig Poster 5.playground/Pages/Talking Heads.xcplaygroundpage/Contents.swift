//: # Gig Poster 5
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport

/*:
 Each image is exactly 400 pixels wide by 600 pixels tall.
 
 Your goal is to precisely reproduce this image:
 
 ![talking-heads-no-grid](talking-heads-no-grid.png "Talking Heads")
 ![talking-heads-with-grid](talking-heads-with-grid.png "Talking Heads")
 
 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 * conditionals (making decisions with ``if`` statements)
 * iteration (use of loops to repeat statements)
 * arrays (a data structure that stores related pieces of information)
 * use of arithmetic operators in expressions

 You may use the color constants created below to obtain the correct colors.
 
 Remember that you can refer to the [Canvas class documentation](https://www.russellgordon.ca/canvasgraphics/documentation/classes/canvas), as needed.
 
 ## Use Source Control
 
 To create evidence that supports your case for exceeding expectations for thread 3:

 * You *must* commit and push regularly ... *not* just at the end of this task.

 * You *must* complete your work prior to 3:30 PM on Wednesday, February 12, 2020.
 
 Good luck! You've got this! 👊🏻👊🏼👊🏽👊🏾👊🏿
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// COLORS
let deepOrange = Color(hue: 8, saturation: 78, brightness: 93, alpha: 100)
let offWhite = Color(hue: 81, saturation: 5, brightness: 88, alpha: 100)
let brightYellow = Color(hue: 46, saturation: 71, brightness: 98, alpha: 100)

// Begin your solution here...


/*:
 ## Use Source Control
 
 To create evidence that supports your case for exceeding expectations for thread 3:

 * You *must* commit and push regularly ... *not* just at the end of this task.

 * You *must* complete your work prior to 3:30 PM on Wednesday, February 12, 2020.


 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas

// draw orange background
canvas.fillColor = deepOrange
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)

// draw white trangle
canvas.drawShapesWithBorders = false
canvas.fillColor = offWhite
var whiteTriangle: [Point] = []
whiteTriangle.append(Point(x: 0, y: 200))
whiteTriangle.append(Point(x: 0, y: 600))
whiteTriangle.append(Point(x: 400, y: 600))
canvas.drawCustomShape(with: whiteTriangle)

// draw yellow trangle
canvas.fillColor = brightYellow
var yellowTriangle: [Point] = []
yellowTriangle.append(Point(x: 0, y: 200))
yellowTriangle.append(Point(x: 400, y: 600))
yellowTriangle.append(Point(x: 400, y: 200))
canvas.drawCustomShape(with: yellowTriangle)

// draw small orange triangles
for y in stride (from: 200, through: 560, by: 40){
    for x in stride (from: 0, through: 400, by: 40){
        canvas.fillColor = deepOrange

        var trangle: [Point] = []
        trangle.append(Point(x: x, y: y))
        trangle.append(Point(x: x, y: y+40))
        trangle.append(Point(x: x+40, y: y+40))
        canvas.drawCustomShape(with: trangle)
    }
}

// draw text
canvas.textColor = offWhite

canvas.drawText(message: "friday, saturday, sunday", at: Point(x: 17, y: 40), size: 8)
canvas.drawText(message: "september 12, 13, 14, 1975", at: Point(x: 17, y: 20), size: 8)

canvas.drawText(message: "at cbgb and omfug", at: Point(x: 150, y: 40), size: 8)
canvas.drawText(message: "315 bowery, new york city", at: Point(x: 150, y: 20), size: 8)

canvas.drawText(message: "also appearing:", at: Point(x: 275, y: 40), size: 8)
canvas.drawText(message: "from brooklyn, the shirts", at: Point(x: 275, y: 20), size: 8)

canvas.drawText(message: "talking heads", at: Point(x: 20, y: 150), size: 40)
