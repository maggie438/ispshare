import Igis
import Scenes

class Letter: RenderableEntity {
    var letter: Text
    var shouldRender : Bool
    var isCorrect : Bool
    init(location: Point, text: String) {
        self.letter = Text(location:location, text:text)
        self.letter.font = "30pt Arial"
        self.shouldRender = false
        self.isCorrect = false
        // Using a meaningful name can be helpful for debugging
        super.init(name: "Letter")
    }

    func willRender() {
        shouldRender = true
    }

    func nowCorrect() {
        isCorrect = true
    }
    override func render(canvas:Canvas) {
        if shouldRender == true {
            canvas.render(letter)
        }
    }

    func move(to point:Point) {
        self.letter.location = point

    }
    func changeText(texts: String) {
        self.letter.text = texts
    }

}
