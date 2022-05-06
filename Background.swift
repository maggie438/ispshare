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
        canvas.render(title, letter1, letter2, letter3, letter4, letter5, letterA, letterB, letterC, letterD, letterE, letterF, letterG, letterH, letterI, letterJ, letterK, letterL, letterM, letterN, letterO, letterP, letterQ, letterR, letterS, letterT, letterU, letterV, letterW, letterX, letterY, letterZ, lineWidth, head)
      }
}
