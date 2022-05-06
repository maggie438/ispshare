import Igis
import Scenes

/*
 This class is responsible for the interaction Layer.
 Internally, it maintains the RenderableEntities for this layer.
 */


class InteractionLayer : Layer, KeyDownHandler {
    let box1 = Paddle(rect:Rect(size:Size(width:150, height:55)))
    let box2 = Paddle(rect:Rect(size:Size(width:150, height:55)))
    let box3 = Paddle(rect:Rect(size:Size(width:150, height:55)))
    let box4 = Paddle(rect:Rect(size:Size(width:150, height:55)))
    let box5 = Paddle(rect:Rect(size:Size(width:150, height:55)))
    let boxA = Paddle(rect:Rect(size:Size(width:60, height:70)))
    let boxB = Paddle(rect:Rect(size:Size(width:60, height:70)))
    let boxC = Paddle(rect:Rect(size:Size(width:60, height:70)))
    let boxD = Paddle(rect:Rect(size:Size(width:60, height:70)))
    let boxE = Paddle(rect:Rect(size:Size(width:60, height:70)))
    let boxF = Paddle(rect:Rect(size:Size(width:60, height:70)))
    let boxG = Paddle(rect:Rect(size:Size(width:60, height:70)))
    let boxH = Paddle(rect:Rect(size:Size(width:60, height:70)))
    let boxI = Paddle(rect:Rect(size:Size(width:60, height:70)))
    let boxJ = Paddle(rect:Rect(size:Size(width:60, height:70)))
    let boxK = Paddle(rect:Rect(size:Size(width:60, height:70)))
    let boxL = Paddle(rect:Rect(size:Size(width:60, height:70)))
    let boxM = Paddle(rect:Rect(size:Size(width:60, height:70)))
    let boxN = Paddle(rect:Rect(size:Size(width:60, height:70)))
    let boxO = Paddle(rect:Rect(size:Size(width:60, height:70)))
    let boxP = Paddle(rect:Rect(size:Size(width:60, height:70)))
    let boxQ = Paddle(rect:Rect(size:Size(width:60, height:70)))
    let boxR = Paddle(rect:Rect(size:Size(width:60, height:70)))
    let boxS = Paddle(rect:Rect(size:Size(width:60, height:70)))
    let boxT = Paddle(rect:Rect(size:Size(width:60, height:70)))
    let boxU = Paddle(rect:Rect(size:Size(width:60, height:70)))
    let boxV = Paddle(rect:Rect(size:Size(width:60, height:70)))
    let boxW = Paddle(rect:Rect(size:Size(width:60, height:70)))
    let boxX = Paddle(rect:Rect(size:Size(width:60, height:70)))
    let boxY = Paddle(rect:Rect(size:Size(width:60, height:70)))
    let boxZ = Paddle(rect:Rect(size:Size(width:60, height:70)))
    
    
    
    init() {
        // Using a meaningful name can be helpful for debugging

        super.init(name:"Interaction")

        insert(entity: box1, at: .front)
        insert(entity: box2, at: .front)
        insert(entity: box3, at: .front)
        insert(entity: box4, at: .front)
        insert(entity: box5, at: .front)
        insert(entity: boxA, at: .front)
        insert(entity: boxB, at: .front)
        insert(entity: boxC, at: .front)
        insert(entity: boxD, at: .front)
        insert(entity: boxE, at: .front)
        insert(entity: boxF, at: .front)
        insert(entity: boxG, at: .front)
        insert(entity: boxH, at: .front)
        insert(entity: boxI, at: .front)
        insert(entity: boxJ, at: .front)
        insert(entity: boxK, at: .front)
        insert(entity: boxL, at: .front)
        insert(entity: boxM, at: .front)
        insert(entity: boxN, at: .front)
        insert(entity: boxO, at: .front)
        insert(entity: boxP, at: .front)
        insert(entity: boxQ, at: .front)
        insert(entity: boxR, at: .front)
        insert(entity: boxS, at: .front)
        insert(entity: boxT, at: .front)
        insert(entity: boxU, at: .front)
        insert(entity: boxV, at: .front)
        insert(entity: boxW, at: .front)
        insert(entity: boxX, at: .front)
        insert(entity: boxY, at: .front)
        insert(entity: boxZ, at: .front)


        // We insert our RenderableEntities in the constructor             
    }
    override func preSetup(canvasSize:Size, canvas:Canvas) {
        box1.move(to:Point(x: 450, y: 735))
        box2.move(to:Point(x: 650, y: 735))
        box3.move(to:Point(x: 850, y: 735))
        box4.move(to:Point(x: 1050, y: 735))
        box5.move(to:Point(x: 1250, y: 735))
        boxA.move(to:Point(x: 1304, y: 155))
        boxB.move(to:Point(x: 1380, y: 155))
        boxC.move(to:Point(x: 1460, y: 155))
        boxD.move(to:Point(x: 1540, y: 155))
        boxE.move(to:Point(x: 1605, y: 155))
        boxF.move(to:Point(x: 1304, y: 230))
        boxG.move(to:Point(x: 1380, y: 230))
        boxH.move(to:Point(x: 1460, y: 230))
        boxI.move(to:Point(x: 1540, y: 230))
        boxJ.move(to:Point(x: 1605, y: 230))
        boxK.move(to:Point(x: 1304, y: 310))
        boxL.move(to:Point(x: 1380, y: 310))
        boxM.move(to:Point(x: 1460, y: 310))
        boxN.move(to:Point(x: 1540, y: 310))
        boxO.move(to:Point(x: 1605, y: 310))
        boxP.move(to:Point(x: 1304, y: 390))
        boxQ.move(to:Point(x: 1380, y: 390))
        boxR.move(to:Point(x: 1460, y: 390))
        boxS.move(to:Point(x: 1540, y: 390))
        boxT.move(to:Point(x: 1605, y: 390))
        boxU.move(to:Point(x: 1304, y: 470))
        boxV.move(to:Point(x: 1380, y: 470))
        boxW.move(to:Point(x: 1460, y: 470))
        boxX.move(to:Point(x: 1540, y: 470))
        boxY.move(to:Point(x: 1605, y: 470))
        boxZ.move(to:Point(x: 1304, y: 550))
        dispatcher.registerKeyDownHandler(handler: self)
    }
    
    override func postTeardown() {
        dispatcher.unregisterKeyDownHandler(handler: self)
    }
    
    func onKeyDown(key:String, code:String, ctrlKey:Bool, shiftKey:Bool, altKey:Bool, metaKey:Bool) {
        print(key, code)
        switch code {
        case "KeyA":
            boxA.move(to:Point(x:0, y:0))
        case "KeyB":
            boxB.move(to:Point(x:0, y:0))
        case "KeyC":
            box1.move(to:Point(x:0, y:0))
        case "KeyD":
            boxD.move(to:Point(x:0, y:0))
        case "KeyE":
            boxE.move(to:Point(x:0, y:0))
            case "KeyF":
            boxF.move(to:Point(x:0, y:0))
        case "KeyG":
            boxG.move(to:Point(x:0, y:0))
        case "KeyH":
            boxH.move(to:Point(x:0, y:0))
        case "KeyI":
            boxI.move(to:Point(x:0, y:0))
        case "KeyJ":
            boxJ.move(to:Point(x:0, y:0))
            case "KeyK":
            boxK.move(to:Point(x:0, y:0))
        case "KeyL":
            boxL.move(to:Point(x:0, y:0))
        case "KeyM":
            boxM.move(to:Point(x:0, y:0))
        case "KeyN":
            boxN.move(to:Point(x:0, y:0))
        case "KeyO":
            boxO.move(to:Point(x:0, y:0))
            case "KeyP":
            boxP.move(to:Point(x:0, y:0))
        case "KeyQ":
            boxQ.move(to:Point(x:0, y:0))
        case "KeyR":
            box2.move(to:Point(x:0, y:0))
        case "KeyS":
            box4.move(to:Point(x:0, y:0))
        case "KeyT":
            box5.move(to:Point(x:0, y:0))
            case "KeyU":
            box3.move(to:Point(x:0, y:0))
        case "KeyV":
            boxV.move(to:Point(x:0, y:0))
        case "KeyW":
            boxW.move(to:Point(x:0, y:0))
        case "KeyX":
            boxX.move(to:Point(x:0, y:0))
        case "KeyY":
            boxY.move(to:Point(x:0, y:0))
            case "KeyZ":
            boxZ.move(to:Point(x:0, y:0))
        default:
            break
        }
        
    }
}




