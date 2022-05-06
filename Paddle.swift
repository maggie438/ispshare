import Igis
import Scenes

class Paddle: RenderableEntity {
    var rectangle: Rectangle

    init(rect:Rect) {
        rectangle = Rectangle(rect:rect, fillMode:.fillAndStroke)

        // Using a meaningful name can be helpful for debugging
        super.init(name: "Paddle")
    }

    override func render(canvas:Canvas) {
        let strokeStyle = StrokeStyle(color:Color(.white))
        let fillStyle = FillStyle(color:Color(.white))
        let lineWidth = LineWidth(width:2)
        
        canvas.render(strokeStyle, fillStyle, lineWidth, rectangle)
    }

    func move(to point:Point) {
        rectangle.rect.topLeft = point
    }

}
