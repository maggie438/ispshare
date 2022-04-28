import Scenes
import Igis

  /*
     This class is responsible for rendering the background.
   */


class Background : RenderableEntity {
    let rectangle : Rectangle
    let title: Text
    var horzstand: Rectangle = Rectangle(rect:Rect(topLeft:Point(x:50, y:100), size:Size(width:100, height:50)))
    var vertstand: Rectangle = Rectangle(rect:Rect(topLeft:Point(x:50, y:100), size:Size(width:100, height:50)))
    var body: Rectangle = Rectangle(rect:Rect(topLeft:Point(x:50, y:100), size:Size(width:100, height:50)))
    var arms: Rectangle = Rectangle(rect:Rect(topLeft:Point(x:50, y:100), size:Size(width:100, height:50)))
    var legs: Rectangle = Rectangle(rect:Rect(topLeft:Point(x:50, y:100), size:Size(width:100, height:50)))
    let head = Ellipse(center:Point(x:0, y:0), radiusX:40, radiusY:40, fillMode:.stroke)
    let lineWidth = LineWidth(width:3)

      init() {
          // Using a meaningful name can be helpful for debugging
          let rect = Rect(topLeft:Point(x:30, y:40), size:Size(width:300, height:50))
          rectangle = Rectangle(rect:rect, fillMode:.stroke)
          title = Text(location:Point(x:800, y:120), text:"Hangman")
          title.font = "50pt Arial"
          
          super.init(name:"Background")
      }
      override func setup(canvasSize: Size, canvas: Canvas) {
        var horzX = 300
        var horzY = 180
        var width = 210
        for _ in (1 ... 2) {
                let horzstandRect = Rect(topLeft:Point(x:horzX, y:horzY), size:Size(width:width, height:15))
                horzstand = Rectangle(rect:horzstandRect, fillMode:.fill)
                let fillStyle = FillStyle(color:Color(.black))
                horzY += 370
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
                height = 370
                canvas.render(fillStyle, vertstand)
        }
        let bodyRect = Rect(topLeft:Point(x:306, y:335), size:Size(width:4, height:100))
        body = Rectangle(rect:bodyRect, fillMode:.fill)
        let fillStyle = FillStyle(color:Color(.black))
        canvas.render(fillStyle, body)
        
        head.center = Point(x: 306, y: 300)
        canvas.render(title, lineWidth, head)
      }
}
