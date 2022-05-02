import Scenes
import Igis

  /*
     This class is responsible for rendering the background.
   */


class Background : RenderableEntity {
    let rectangle : Rectangle
    let title: Text
    let letter1: Text
    let letter2: Text
    let letter3: Text
    let letter4: Text
    let letter5: Text
    var horzstand: Rectangle = Rectangle(rect:Rect(topLeft:Point(x:50, y:100), size:Size(width:100, height:50)))
    var vertstand: Rectangle = Rectangle(rect:Rect(topLeft:Point(x:50, y:100), size:Size(width:100, height:50)))
    var body: Rectangle = Rectangle(rect:Rect(topLeft:Point(x:50, y:100), size:Size(width:100, height:50)))
    var arms: Rectangle = Rectangle(rect:Rect(topLeft:Point(x:50, y:100), size:Size(width:100, height:50)))
    let head = Ellipse(center:Point(x:0, y:0), radiusX:37, radiusY:37, fillMode:.stroke)
    let lineWidth = LineWidth(width:4)
    var undlines: Rectangle = Rectangle(rect:Rect(topLeft:Point(x:50, y:100), size:Size(width:100, height:50)))
    var box: Rectangle = Rectangle(rect:Rect(topLeft:Point(x:50, y:100), size:Size(width:100, height:50)))

      init() {
          // Using a meaningful name can be helpful for debugging
          let rect = Rect(topLeft:Point(x:30, y:40), size:Size(width:300, height:50))
          rectangle = Rectangle(rect:rect, fillMode:.stroke)
          title = Text(location:Point(x:800, y:120), text:"Hangman")
          title.font = "45pt Arial"
          letter1 = Text(location:Point(x:475, y:790), text:"H")
          letter1.font = "45pt Arial"
          letter2 = Text(location:Point(x:675, y:790), text:"A")
          letter2.font = "45pt Arial"
          letter3 = Text(location:Point(x:875, y:790), text:"I")
          letter3.font = "45pt Arial"
          letter4 = Text(location:Point(x:1075, y:790), text:"R")
          letter4.font = "45pt Arial"
          letter5 = Text(location:Point(x:1275, y:790), text:"Y")
          letter5.font = "45pt Arial"
          
          super.init(name:"Background")
          System.out.println("hi")
      }
      override func setup(canvasSize: Size, canvas: Canvas) {
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
        let bodyRect = Rect(topLeft:Point(x:306, y:335), size:Size(width:5, height:112))
        body = Rectangle(rect:bodyRect, fillMode:.fill)
        let fillStyle = FillStyle(color:Color(.black))
        canvas.render(fillStyle, body)

        var aY = 445
        var bY = 447
        var cY = 500
        var dY = 497
        for _ in (1 ... 2) {
            let points = [Point(x:307, y:aY), Point(x:310, y:bY), Point(x:285, y:cY), Point(x:281, y:dY)]
            let path = Path(points:points, fillMode:.fill)
           aY -= 75
         bY -= 75
        cY -= 75
        dY -= 75                    
        canvas.render(fillStyle, path)
        }

        var eY = 450
        var fY = 447
        var gY = 497
        var hY = 500
        for _ in (1 ... 2) {
        let points2 = [Point(x:307, y:eY), Point(x:310, y:fY), Point(x:342, y:gY), Point(x:338, y:hY)]
        let path2 = Path(points:points2, fillMode:.fill)
        eY -= 75
        fY -= 75
        gY -= 75
        hY -= 75
        canvas.render(fillStyle, path2)
        }

        var undX = 450
        for _ in (1 ... 5) {
        let undlinesRect = Rect(topLeft:Point(x:undX, y:800), size:Size(width:100, height:3))
        undlines = Rectangle(rect:undlinesRect, fillMode:.fill)
        undX += 200
        canvas.render(fillStyle, undlines)
        }

        let boxRect = Rect(topLeft:Point(x:1300, y:150), size:Size(width:400, height:500))
        box = Rectangle(rect:boxRect, fillMode:.stroke)
        let strokeStyle = StrokeStyle(color:Color(.black))
        canvas.render(strokeStyle, lineWidth, box)
        
        head.center = Point(x: 307, y: 297)
        canvas.render(title, letter1, letter2, letter3, letter4, letter5, lineWidth, head)
      }
}
