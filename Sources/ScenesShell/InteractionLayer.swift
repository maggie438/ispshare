import Scenes

/*
 This class is responsible for the interaction Layer.
 Internally, it maintains the RenderableEntities for this layer.
 */


class InteractionLayer : Layer {
    let rectangle : Rectangle
    let title: Text
    let letter1: Text
    let letter2: Text
    let letter3: Text
    let letter4: Text
    let letter5: Text
    let letterA: Text
    let letterB: Text
    let letterC: Text
    let letterD: Text
    let letterE: Text
    let letterF: Text
    let letterG: Text
    let letterH: Text
    let letterI: Text
    let letterJ: Text
    let letterK: Text
    let letterL: Text
    let letterM: Text
    let letterN: Text
    let letterO: Text
    let letterP: Text
    let letterQ: Text
    let letterR: Text
    let letterS: Text
    let letterT: Text
    let letterU: Text
    let letterV: Text
    let letterW: Text
    let letterX: Text
    let letterY: Text
    let letterZ: Text
    

    func oneKeyDown(key:String, code:String, ctrlKey:Bool, shiftKey:Bool, altKey:Bool, metaKey:Bool) {
        print(key, code)
    }
    

    func setCharacters(word:Bool, hiddenWord:String) {
        var words = ["solid", "water", "style", "extra","metal", "earth", "stone", "crust", "party", "beach", "bread", "grind", "phone", "chair"]
        let word = words[Int.random(in:0..<words.count)]
        var hiddenWord = ["-", "-", "-", "-", "-"]
        let p = String?
        var wrongAttempts = 0
        for tried in 1...6 {
            var index = word.firstIndex(of: p)
            if word.contains(p){
                hiddenWord[index] = p
            }else{
                wrongAttempts = wrongAttempts + 1
                

                //next function just said with each attempt (counted) a part gets drawn --> first attempt: head//
                //if then//
            }
        }
        func renderLabel(canvas:Canvas, patternId:Int) {
            let text = Text(location:Point(x:15, y:40), text:"\(patternId)")
            text.font = "30pt Arial"
            canvas.render(FillStyle(color:Color(.black)))
            canvas.render(text)
        }
        func renderPattern1(canvas: Canvas) {
            let head = Ellipse(center:Point(x:0, y:0), radiusX:37, radiusY:37, fillMode:.stroke)
            head.center = Point(x: 307, y: 297)
            canvas.render(head)
        }

        init() {
            let rect = Rect(topLeft:Point(x:30, y:40), size:Size(width:300, height:50))
            rectangle = Rectangle(rect:rect, fillMode:.stroke)
            title = Text(location:Point(x:800, y:120), text:"Hangman")
            title.font = "45pt Arial"
            letter1 = Text(location:Point(x:475, y:790), text:"C")
            letter1.font = "45pt Arial"
            letter2 = Text(location:Point(x:675, y:790), text:"R")
            letter2.font = "45pt Arial"
            letter3 = Text(location:Point(x:875, y:790), text:"U")
            letter3.font = "45pt Arial"
            letter4 = Text(location:Point(x:1075, y:790), text:"S")
            letter4.font = "45pt Arial"
            letter5 = Text(location:Point(x:1275, y:790), text:"T")
            letter5.font = "45pt Arial"
            letterA = Text(location:Point(x:1330, y:200), text:"A")
            letterA.font = "35pt Arial"
            letterB = Text(location:Point(x:1400, y:200), text:"B")
            letterB.font = "35pt Arial"
            letterC = Text(location:Point(x:1470, y:200), text:"C")
            letterC.font = "35pt Arial"
            letterD = Text(location:Point(x:1540, y:200), text:"D")
            letterD.font = "35pt Arial"
            letterE = Text(location:Point(x:1610, y:200), text:"E")
            letterE.font = "35pt Arial"
            letterF = Text(location:Point(x:1330, y:280), text:"F")
            letterF.font = "35pt Arial"
            letterG = Text(location:Point(x:1400, y:280), text:"G")
            letterG.font = "35pt Arial"
            letterH = Text(location:Point(x:1470, y:280), text:"H")
            letterH.font = "35pt Arial"
            letterI = Text(location:Point(x:1540, y:280), text:"I")
            letterI.font = "35pt Arial"
            letterJ = Text(location:Point(x:1610, y:280), text:"J")
            letterJ.font = "35pt Arial"
            letterK = Text(location:Point(x:1330, y:360), text:"K")
            letterK.font = "35pt Arial"
            letterL = Text(location:Point(x:1400, y:360), text:"L")
            letterL.font = "35pt Arial"
            letterM = Text(location:Point(x:1470, y:360), text:"M")
            letterM.font = "35pt Arial"
            letterN = Text(location:Point(x:1540, y:360), text:"N")
            letterN.font = "35pt Arial"
            letterO = Text(location:Point(x:1610, y:360), text:"O")
            letterO.font = "35pt Arial"
            letterP = Text(location:Point(x:1330, y:440), text:"P")
            letterP.font = "35pt Arial"
            letterQ = Text(location:Point(x:1400, y:440), text:"Q")
            letterQ.font = "35pt Arial"
            letterR = Text(location:Point(x:1470, y:440), text:"R")
            letterR.font = "35pt Arial"
            letterS = Text(location:Point(x:1540, y:440), text:"S")
            letterS.font = "35pt Arial"
            letterT = Text(location:Point(x:1610, y:440), text:"T")
            letterT.font = "35pt Arial"
            letterU = Text(location:Point(x:1330, y:520), text:"U")
            letterU.font = "35pt Arial"
            letterV = Text(location:Point(x:1400, y:520), text:"V")
            letterV.font = "35pt Arial"
            letterW = Text(location:Point(x:1470, y:520), text:"W")
            letterW.font = "35pt Arial"
            letterX = Text(location:Point(x:1540, y:520), text:"X")
            letterX.font = "35pt Arial"
            letterY = Text(location:Point(x:1610, y:520), text:"Y")
            letterY.font = "35pt Arial"
            letterZ = Text(location:Point(x:1330, y:600), text:"Z")
            letterZ.font = "35pt Arial"

            super.init(name:"Interaction")
        }

        
        
        



        //function that limits attempts (in letters.swift)
        
        
        

        
        override func setup(canvas:Canvas) {
        }      
    }
}
