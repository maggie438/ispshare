import Igis
import Scenes

/*
 This class is responsible for the interaction Layer.
 Internally, it maintains the RenderableEntities for this layer.
 */


class InteractionLayer : Layer, KeyDownHandler {
    let letter1 = Letter(location:Point(x: 0, y: 0), text:"s")
    let letter2 = Letter(location:Point(x: 0, y: 0), text:"s")
    let letter3 = Letter(location:Point(x: 0, y: 0), text:"s")
    let letter4 = Letter(location:Point(x: 0, y: 0), text:"s")
    let letter5  = Letter(location:Point(x: 0, y: 0), text:"s")

    let letterA = Letter(location:Point(x: 0, y: 0), text:"A")   
    let letterB = Letter(location:Point(x: 0, y: 0), text:"B")
    let letterC = Letter(location:Point(x: 0, y: 0), text:"C")
    let letterD = Letter(location:Point(x: 0, y: 0), text:"D")
    let letterE = Letter(location:Point(x: 0, y: 0), text:"E")
    let letterF = Letter(location:Point(x: 0, y: 0), text:"F")
    let letterG = Letter(location:Point(x: 0, y: 0), text:"G")
    let letterH = Letter(location:Point(x: 0, y: 0), text:"H")
    let letterI = Letter(location:Point(x: 0, y: 0), text:"I")
    let letterJ = Letter(location:Point(x: 0, y: 0), text:"J")
    let letterK = Letter(location:Point(x: 0, y: 0), text:"K")
    let letterL = Letter(location:Point(x: 0, y: 0), text:"L")
    let letterM = Letter(location:Point(x: 0, y: 0), text:"M")
    let letterN = Letter(location:Point(x: 0, y: 0), text:"N")
    let letterO = Letter(location:Point(x: 0, y: 0), text:"O")
    let letterP = Letter(location:Point(x: 0, y: 0), text:"P")
    let letterQ = Letter(location:Point(x: 0, y: 0), text:"Q")
    let letterR = Letter(location:Point(x: 0, y: 0), text:"R")
    let letterS = Letter(location:Point(x: 0, y: 0), text:"S")
    let letterT = Letter(location:Point(x: 0, y: 0), text:"T")
    let letterU = Letter(location:Point(x: 0, y: 0), text:"U")
    let letterV = Letter(location:Point(x: 0, y: 0), text:"V")
    let letterW = Letter(location:Point(x: 0, y: 0), text:"W")
    let letterX = Letter(location:Point(x: 0, y: 0), text:"X")
    let letterY = Letter(location:Point(x: 0, y: 0), text:"Y")
    let letterZ = Letter(location:Point(x: 0, y: 0), text:"Z")
    let hangman = Hangman()
    
    init() {
        // Using a meaningful name can be helpful for debugging

        super.init(name:"Interaction")
        insert(entity: letter1, at: .front)
        insert(entity: letter2, at: .front)
        insert(entity: letter3, at: .front)
        insert(entity: letter4, at: .front)
        insert(entity: letter5, at: .front)        
        insert(entity: letter1, at: .front)
        insert(entity: letter2, at: .front)
        insert(entity: letter3, at: .front)
        insert(entity: letter4, at: .front)
        insert(entity: letter5, at: .front)
        insert(entity: letterA, at: .front)
        insert(entity: letterB, at: .front)
        insert(entity: letterC, at: .front)
        insert(entity: letterD, at: .front)
        insert(entity: letterE, at: .front)
        insert(entity: letterF, at: .front)
        insert(entity: letterG, at: .front)
        insert(entity: letterH, at: .front)
        insert(entity: letterI, at: .front)
        insert(entity: letterJ, at: .front)
        insert(entity: letterK, at: .front)
        insert(entity: letterL, at: .front)
        insert(entity: letterM, at: .front)
        insert(entity: letterN, at: .front)
        insert(entity: letterO, at: .front)
        insert(entity: letterP, at: .front)
        insert(entity: letterQ, at: .front)
        insert(entity: letterR, at: .front)
        insert(entity: letterS, at: .front)
        insert(entity: letterT, at: .front)
        insert(entity: letterU, at: .front)
        insert(entity: letterV, at: .front)
        insert(entity: letterW, at: .front)
        insert(entity: letterX, at: .front)
        insert(entity: letterY, at: .front)
        insert(entity: letterZ, at: .front)
        insert(entity: hangman, at: .front)

        // We insert our RenderableEntities in the constructor             
    }

    
    func chooseWord() -> String{
        let wordbank = ["place","water", "mouse", "house", "juice", "blend", "kinds", "meats", "shake", "power", "beans", "nitro", "phone"]
        let word = wordbank[Int.random(in:0..<wordbank.count)]
        return word
    }
    
    override func preSetup(canvasSize:Size, canvas:Canvas) {
        letter1.move(to:Point(x: 475, y: 790))
        letter2.move(to:Point(x: 675, y: 790))
        letter3.move(to:Point(x: 875, y: 790))
        letter4.move(to:Point(x: 1075, y: 790))
        letter5.move(to:Point(x: 1275, y: 790))      
        letterA.move(to:Point(x: 1304, y: 155))
        letterB.move(to:Point(x: 1380, y: 155))
        letterC.move(to:Point(x: 1460, y: 155))
        letterD.move(to:Point(x: 1540, y: 155))
        letterE.move(to:Point(x: 1605, y: 155))
        letterF.move(to:Point(x: 1304, y: 230))
        letterG.move(to:Point(x: 1380, y: 230))
        letterH.move(to:Point(x: 1460, y: 230))
        letterI.move(to:Point(x: 1540, y: 230))
        letterJ.move(to:Point(x: 1605, y: 230))
        letterK.move(to:Point(x: 1304, y: 310))
        letterL.move(to:Point(x: 1380, y: 310))
        letterM.move(to:Point(x: 1460, y: 310))
        letterN.move(to:Point(x: 1540, y: 310))
        letterO.move(to:Point(x: 1605, y: 310))
        letterP.move(to:Point(x: 1304, y: 390))
        letterQ.move(to:Point(x: 1380, y: 390))
        letterR.move(to:Point(x: 1460, y: 390))
        letterS.move(to:Point(x: 1540, y: 390))
        letterT.move(to:Point(x: 1605, y: 390))
        letterU.move(to:Point(x: 1304, y: 470))
        letterV.move(to:Point(x: 1380, y: 470))
        letterW.move(to:Point(x: 1460, y: 470))
        letterX.move(to:Point(x: 1540, y: 470))
        letterY.move(to:Point(x: 1605, y: 470))
        letterZ.move(to:Point(x: 1304, y: 550))

        let word = chooseWord()
        var xposition = 475
        for character in word {
            switch character {

            case "a":
                letterA.move(to:Point(x:xposition, y:790))
                letterA.nowCorrect()
                xposition += 200            
            case "b":
                letterB.move(to:Point(x:xposition, y:790))
                                letterB.nowCorrect()
                xposition += 200
            case "c":
                letterC.move(to:Point(x:xposition, y:790))
                                letterC.nowCorrect()
                xposition += 200
            case "d":
                letterD.move(to:Point(x:xposition, y:790))
                                letterD.nowCorrect()
                xposition += 200
            case "e":
                letterE.move(to:Point(x:xposition, y:790))
                                letterE.nowCorrect()
                xposition += 200
            case "f":
                letterF.move(to:Point(x:xposition, y:790))
                                letterF.nowCorrect()
                xposition += 200
            case "g":
                letterG.move(to:Point(x:xposition, y:790))
                                letterG.nowCorrect()
                xposition += 200            
            case "h":
                letterH.move(to:Point(x:xposition, y:790))
                                letterH.nowCorrect()
                xposition += 200
            case "i":
                letterI.move(to:Point(x:xposition, y:790))
                                letterI.nowCorrect()
                xposition += 200
            case "j":
                letterJ.move(to:Point(x:xposition, y:790))
                                letterJ.nowCorrect()
                xposition += 200
            case "k":
                letterK.move(to:Point(x:xposition, y:790))
                                letterK.nowCorrect()
                xposition += 200
            case "l":
                letterL.move(to:Point(x:xposition, y:790))
                                letterL.nowCorrect()
                xposition += 200
            case "m":
                letterM.move(to:Point(x:xposition, y:790))
                                letterM.nowCorrect()
                xposition += 200            
            case "n":
                letterN.move(to:Point(x:xposition, y:790))
                                letterN.nowCorrect()
                xposition += 200
            case "o":
                letterO.move(to:Point(x:xposition, y:790))
                                letterO.nowCorrect()
                xposition += 200
            case "p":
                letterP.move(to:Point(x:xposition, y:790))
                                letterP.nowCorrect()
                xposition += 200
            case "q":
                letterQ.move(to:Point(x:xposition, y:790))
                                letterQ.nowCorrect()
                xposition += 200
            case "r":
                letterR.move(to:Point(x:xposition, y:790))
                                letterR.nowCorrect()
                xposition += 200
            case "s":
                letterS.move(to:Point(x:xposition, y:790))
                                letterS.nowCorrect()
                xposition += 200            
            case "t":
                letterT.move(to:Point(x:xposition, y:790))
                                letterT.nowCorrect()
                xposition += 200
            case "u":
                letterU.move(to:Point(x:xposition, y:790))
                                letterU.nowCorrect()
                xposition += 200
            case "v":
                letterV.move(to:Point(x:xposition, y:790))
                                letterV.nowCorrect()
                xposition += 200
            case "w":
                letterW.move(to:Point(x:xposition, y:790))
                                letterW.nowCorrect()
                xposition += 200
            case "x":
                letterX.move(to:Point(x:xposition, y:790))
                                letterX.nowCorrect()
                xposition += 200
            case "y":
                letterY.move(to:Point(x:xposition, y:790))
                                letterY.nowCorrect()
                xposition += 200
            case "z":
                letterZ.move(to:Point(x:xposition, y:790))
                                letterZ.nowCorrect()
                xposition += 200
            default:
                print("hello")
            
            }
        }
        
        dispatcher.registerKeyDownHandler(handler: self)
    }
    
    override func postTeardown() {
        dispatcher.unregisterKeyDownHandler(handler: self)
    }
    
    func onKeyDown(key:String, code:String, ctrlKey:Bool, shiftKey:Bool, altKey:Bool, metaKey:Bool) {
        print(key, code)
        switch code {
        case "KeyA":
            letterA.willRender()
            if letterA.isCorrect == false {
                hangman.addErrors()
            }
        case "KeyB":
            letterB.willRender()
                        if letterB.isCorrect == false {
                hangman.addErrors()
            }
        case "KeyC":
            letterC.willRender()
                        if letterC.isCorrect == false {
                hangman.addErrors()
            }
        case "KeyD":
            letterD.willRender()
                        if letterD.isCorrect == false {
                hangman.addErrors()
            }
        case "KeyE":
            letterE.willRender()
                        if letterE.isCorrect == false {
                hangman.addErrors()
            }
        case "KeyF":
            letterF.willRender()
                        if letterF.isCorrect == false {
                hangman.addErrors()
            }
        case "KeyG":
            letterG.willRender()
                        if letterG.isCorrect == false {
                hangman.addErrors()
            }
        case "KeyH":
            letterH.willRender()
                        if letterH.isCorrect == false {
                hangman.addErrors()
            }
        case "KeyI":
            letterI.willRender()
                        if letterI.isCorrect == false {
                hangman.addErrors()
            }
        case "KeyJ":
            letterJ.willRender()
                        if letterJ.isCorrect == false {
                hangman.addErrors()
            }
            case "KeyK":
                letterK.willRender()
                            if letterK.isCorrect == false {
                hangman.addErrors()
            }
        case "KeyL":
            letterL.willRender()
                        if letterL.isCorrect == false {
                hangman.addErrors()
            }
        case "KeyM":
            letterM.willRender()
                        if letterM.isCorrect == false {
                hangman.addErrors()
            }
        case "KeyN":
            letterN.willRender()
                        if letterN.isCorrect == false {
                hangman.addErrors()
            }
        case "KeyO":
            letterO.willRender()
                        if letterO.isCorrect == false {
                hangman.addErrors()
            }
            case "KeyP":
                letterP.willRender()
                            if letterP.isCorrect == false {
                hangman.addErrors()
            }
        case "KeyQ":
            letterQ.willRender()
                        if letterQ.isCorrect == false {
                hangman.addErrors()
            }
        case "KeyR":
            letterR.willRender()
                        if letterR.isCorrect == false {
                hangman.addErrors()
            }
        case "KeyS":
            letterS.willRender()
                        if letterS.isCorrect == false {
                hangman.addErrors()
            }
        case "KeyT":
            letterT.willRender()
                        if letterT.isCorrect == false {
                hangman.addErrors()
            }
            case "KeyU":
                letterU.willRender()
                            if letterU.isCorrect == false {
                hangman.addErrors()
            }
        case "KeyV":
            letterV.willRender()
                        if letterV.isCorrect == false {
                hangman.addErrors()
            }
        case "KeyW":
            letterW.willRender()
                        if letterW.isCorrect == false {
                hangman.addErrors()
            }
        case "KeyX":
            letterX.willRender()
                        if letterX.isCorrect == false {
                hangman.addErrors()
            }
        case "KeyY":
            letterY.willRender()
            if letterY.isCorrect == false {
                hangman.addErrors()
            }
            case "KeyZ":
                letterZ.willRender()
                if letterZ.isCorrect == false {
                    hangman.addErrors()
            }
        default:
            break
        }
        
    }
}




