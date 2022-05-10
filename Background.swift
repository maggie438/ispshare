import Scenes
import Igis

  /*
     This class is responsible for rendering the background.
   */


class Background : RenderableEntity {

    let rectangle : Rectangle
    let title: Text
    var letter1: Text
    var letter2: Text
    var letter3: Text
    var letter4: Text
    var letter5: Text   
    var horzstand: Rectangle = Rectangle(rect:Rect(topLeft:Point(x:50, y:100), size:Size(width:100, height:50)))
    var vertstand: Rectangle = Rectangle(rect:Rect(topLeft:Point(x:50, y:100), size:Size(width:100, height:50)))
    let lineWidth = LineWidth(width:4)
    var undlines: Rectangle = Rectangle(rect:Rect(topLeft:Point(x:50, y:100), size:Size(width:100, height:50)))
    var box: Rectangle = Rectangle(rect:Rect(topLeft:Point(x:50, y:100), size:Size(width:100, height:50)))


    init() {
        // Using a meaningful name can be helpful for debugging
          let rect = Rect(topLeft:Point(x:30, y:40), size:Size(width:300, height:50))
          rectangle = Rectangle(rect:rect, fillMode:.stroke)
          title = Text(location:Point(x:800, y:120), text:"Hangman")
          title.font = "45pt Arial"


          letter1 = Text(location:Point(x:475, y:79000), text:"C")
          letter1.font = "45pt Arial"
          
          letter2 = Text(location:Point(x:675, y:7900), text:"R")
          letter2.font = "45pt Arial"
          letter3 = Text(location:Point(x:875, y:7900), text:"U")
          letter3.font = "45pt Arial"
          letter4 = Text(location:Point(x:1075, y:7900), text:"S")
          letter4.font = "45pt Arial"
          letter5 = Text(location:Point(x:1275, y:7900), text:"T")
          letter5.font = "45pt Arial"
          

          
          
          super.init(name:"Background")

    }

      override func render(canvas: Canvas) {
        var horzX = 300
        var horzY = 180
        var width = 210
        for _ in (1 ... 2) {
                let horzstandRect = Rect(topLeft:Point(x:horzX, y:horzY), size:Size(width:width, height:15))
                horzstand = Rectangle(rect:horzstandRect, fillMode:.fill)
                let fillStyle = FillStyle(color:Color(.black))
                horzY += 400
                horzX += 150
                width = 115
                canvas.render(fillStyle, horzstand)
        }
        var vertX = 300
        var height = 80
        for _ in (1 ... 2) {
                let vertstandRect = Rect(topLeft:Point(x:vertX, y:180), size:Size(width:15, height:height))
                vertstand = Rectangle(rect:vertstandRect, fillMode:.fill)
                let fillStyle = FillStyle(color:Color(.black))
                vertX += 200
                height = 400
                canvas.render(fillStyle, vertstand)
        }


        var undX = 450
        for _ in (1 ... 5) {
        let undlinesRect = Rect(topLeft:Point(x:undX, y:800), size:Size(width:100, height:3))
        undlines = Rectangle(rect:undlinesRect, fillMode:.fill)
        undX += 200
        canvas.render(undlines)
        }

        let boxRect = Rect(topLeft:Point(x:1250, y:120), size:Size(width:400, height:500))
        box = Rectangle(rect:boxRect, fillMode:.stroke)
        let strokeStyle = StrokeStyle(color:Color(.black))
        canvas.render(strokeStyle, lineWidth, box)
        

        canvas.render(title, letter1, letter2, letter3, letter4, letter5, lineWidth)
      }
}
