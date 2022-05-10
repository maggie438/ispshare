import Igis
import Scenes

class Hangman: RenderableEntity {
    var body : Rectangle
    var arm1 : Path
    var arm2 : Path
    var leg1 : Path
    var leg2 : Path
    var head : Ellipse
    var errors : Int
    init() {
        self.head = Ellipse(center:Point(x:307, y:297), radiusX:37, radiusY:37, fillMode:.stroke)
        
        self.body = Rectangle(rect:Rect(topLeft:Point(x:306, y:335), size:Size(width:5, height:112)), fillMode: .fill)
        
        let points = [Point(x:307, y:445 - 75), Point(x:310, y:447 - 75), Point(x:285, y:500 - 75), Point(x:281, y:497 - 75)]
        
        self.arm1 = Path(points:points, fillMode: .fill)
          
        let pointsLeg = [Point(x:307, y:445), Point(x:310, y:447), Point(x:285, y:500 ), Point(x:281, y:497)]

        self.leg1 = Path(points:pointsLeg, fillMode: .fill)


        let pointsArm2 = [Point(x:307, y:450 - 75), Point(x:310, y:447 - 75), Point(x:342, y:497 - 75), Point(x:338, y:500 - 75)]
        self.arm2 = Path(points:pointsArm2, fillMode: .fill)

        let pointsLeg2 = [Point(x:307, y:450), Point(x:310, y:447), Point(x:342, y:497), Point(x:338, y:500)]
        self.leg2 = Path(points:pointsLeg2, fillMode: .fill)

        self.errors = 0
               
          
        super.init(name: "Hangman")
    }

    override func render(canvas:Canvas){
        let fillStyle = FillStyle(color:Color(.black))
        switch errors {
        case 1:
            canvas.render(fillStyle, head)
        case 2:
            canvas.render(fillStyle, head, body)           
        case 3:            
            canvas.render(fillStyle, head, body, arm1)
        case 4:
            canvas.render(fillStyle, head, body, arm1, arm2)
        case 5:
            canvas.render(fillStyle, head, body, arm1, arm2, leg1)
        case 6:
            canvas.render(fillStyle, head, body, arm1, arm2, leg1, leg2)
        default:
            break 
            
        }

    }

    func addErrors() {
        self.errors += 1
    }
    
}
