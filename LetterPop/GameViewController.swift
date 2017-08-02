//
//  GameViewController.swift
//  LetterPop
//
//  Created by Cat on 6/15/16.
//  Copyright (c) 2016 Cat. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {
    
    var dictionary = Set<String>()
    
    var needToBeReplaced = Array<UIButton>()
    var origBackground = Array<UIImage>()
    
    var allBalloons = Array<UIButton>()
    
    var score = 0
    var time = 90
    
    @IBOutlet weak var textBox: UILabel!
    @IBOutlet weak var validBox: UILabel!
    @IBOutlet weak var scoreBox: UILabel!
    @IBOutlet weak var timeBox: UILabel!
    
    var currentTimer: NSTimer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        appendWords()
        
        if let scene = GameScene(fileNamed:"GameScene") {
            // Configure the view.
            let skView = self.view as! SKView
            skView.showsFPS = true
            skView.showsNodeCount = true
            
            /* Sprite Kit applies additional optimizations to improve rendering performance */
            skView.ignoresSiblingOrder = true
            
            /* Set the scale mode to scale to fit the window */
            scene.scaleMode = .AspectFill
            
            skView.presentScene(scene)
        }
    }
    
    func update() {
        if(time > 0) {
            time = time - 1
            timeBox.text = String(time)
        } else {
            validBox.text = "Time is up! Your score is \(score)."
        }
    }
    
    override func shouldAutorotate() -> Bool {
        return true
    }
    
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        if UIDevice.currentDevice().userInterfaceIdiom == .Phone {
            return .AllButUpsideDown
        } else {
            return .All
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    
    
    @IBOutlet weak var balloon1: UIButton!
    @IBAction func tapBalloon1(sender: UIButton) {
        if balloon1.currentBackgroundImage != UIImage(named: "whitebg.jpg") {
            // add background to origBackground
            origBackground.append(balloon1.backgroundImageForState(.Normal)!)
            // image changes to whitebg
            balloon1.setBackgroundImage(UIImage(named: "whitebg.jpg"), forState: .Normal)
            // add letter to text box
            textBox.text = textBox.text! + balloon1.currentTitle!
            // letter disappears
            balloon1.setTitle("", forState: .Normal)
            // add button to needToBeReplaced
            needToBeReplaced.append(balloon1)
        }
    }
    
    @IBOutlet weak var balloon2: UIButton!
    @IBAction func tapBalloon2(sender: UIButton) {
        if balloon2.currentBackgroundImage != UIImage(named: "whitebg.jpg") {
            // add background to origBackground
            origBackground.append(balloon2.backgroundImageForState(.Normal)!)
            // image changes to whitebg
            balloon2.setBackgroundImage(UIImage(named: "whitebg.jpg"), forState: .Normal)
            // add letter to text box
            textBox.text = textBox.text! + balloon2.currentTitle!
            // letter disappears
            balloon2.setTitle("", forState: .Normal)
            // add button to needToBeReplaced
            needToBeReplaced.append(balloon2)
        }
    }
    
    @IBOutlet weak var balloon3: UIButton!
    @IBAction func tapBalloon3(sender: UIButton) {
        if balloon3.currentBackgroundImage != UIImage(named: "whitebg.jpg") {
            // add background to origBackground
            origBackground.append(balloon3.backgroundImageForState(.Normal)!)
            // image changes to whitebg
            balloon3.setBackgroundImage(UIImage(named: "whitebg.jpg"), forState: .Normal)
            // add letter to text box
            textBox.text = textBox.text! + balloon3.currentTitle!
            // letter disappears
            balloon3.setTitle("", forState: .Normal)
            // add button to needToBeReplaced
            needToBeReplaced.append(balloon3)
        }
    }
    
    @IBOutlet weak var balloon4: UIButton!
    @IBAction func tapBalloon4(sender: UIButton) {
        if balloon4.currentBackgroundImage != UIImage(named: "whitebg.jpg") {
            // add background to origBackground
            origBackground.append(balloon4.backgroundImageForState(.Normal)!)
            // image changes to whitebg
            balloon4.setBackgroundImage(UIImage(named: "whitebg.jpg"), forState: .Normal)
            // add letter to text box
            textBox.text = textBox.text! + balloon4.currentTitle!
            // letter disappears
            balloon4.setTitle("", forState: .Normal)
            // add button to needToBeReplaced
            needToBeReplaced.append(balloon4)
        }
    }
    
    @IBOutlet weak var balloon5: UIButton!
    @IBAction func tapBalloon5(sender: UIButton) {
        if balloon5.currentBackgroundImage != UIImage(named: "whitebg.jpg") {
            // add background to origBackground
            origBackground.append(balloon5.backgroundImageForState(.Normal)!)
            // image changes to whitebg
            balloon5.setBackgroundImage(UIImage(named: "whitebg.jpg"), forState: .Normal)
            // add letter to text box
            textBox.text = textBox.text! + balloon5.currentTitle!
            // letter disappears
            balloon5.setTitle("", forState: .Normal)
            // add button to needToBeReplaced
            needToBeReplaced.append(balloon5)
        }
    }
    
    @IBOutlet weak var balloon6: UIButton!
    @IBAction func tapBalloon6(sender: UIButton) {
        if balloon6.currentBackgroundImage != UIImage(named: "whitebg.jpg") {
            // add background to origBackground
            origBackground.append(balloon6.backgroundImageForState(.Normal)!)
            // image changes to whitebg
            balloon6.setBackgroundImage(UIImage(named: "whitebg.jpg"), forState: .Normal)
            // add letter to text box
            textBox.text = textBox.text! + balloon6.currentTitle!
            // letter disappears
            balloon6.setTitle("", forState: .Normal)
            // add button to needToBeReplaced
            needToBeReplaced.append(balloon6)
        }
    }
    
    @IBOutlet weak var balloon7: UIButton!
    @IBAction func tapBalloon7(sender: UIButton) {
        if balloon7.currentBackgroundImage != UIImage(named: "whitebg.jpg") {
            // add background to origBackground
            origBackground.append(balloon7.backgroundImageForState(.Normal)!)
            // image changes to whitebg
            balloon7.setBackgroundImage(UIImage(named: "whitebg.jpg"), forState: .Normal)
            // add letter to text box
            textBox.text = textBox.text! + balloon7.currentTitle!
            // letter disappears
            balloon7.setTitle("", forState: .Normal)
            // add button to needToBeReplaced
            needToBeReplaced.append(balloon7)
        }
    }
    
    @IBOutlet weak var balloon8: UIButton!
    @IBAction func tapBalloon8(sender: UIButton) {
        if balloon8.currentBackgroundImage != UIImage(named: "whitebg.jpg") {
            // add background to origBackground
            origBackground.append(balloon8.backgroundImageForState(.Normal)!)
            // image changes to whitebg
            balloon8.setBackgroundImage(UIImage(named: "whitebg.jpg"), forState: .Normal)
            // add letter to text box
            textBox.text = textBox.text! + balloon8.currentTitle!
            // letter disappears
            balloon8.setTitle("", forState: .Normal)
            // add button to needToBeReplaced
            needToBeReplaced.append(balloon8)
        }
    }
    
    @IBOutlet weak var balloon9: UIButton!
    @IBAction func tapBalloon9(sender: UIButton) {
        if balloon9.currentBackgroundImage != UIImage(named: "whitebg.jpg") {
            // add background to origBackground
            origBackground.append(balloon9.backgroundImageForState(.Normal)!)
            // image changes to whitebg
            balloon9.setBackgroundImage(UIImage(named: "whitebg.jpg"), forState: .Normal)
            // add letter to text box
            textBox.text = textBox.text! + balloon9.currentTitle!
            // letter disappears
            balloon9.setTitle("", forState: .Normal)
            // add button to needToBeReplaced
            needToBeReplaced.append(balloon9)
        }
    }
    
    @IBOutlet weak var balloon10: UIButton!
    @IBAction func tapBalloon10(sender: UIButton) {
        if balloon10.currentBackgroundImage != UIImage(named: "whitebg.jpg") {
            // add background to origBackground
            origBackground.append(balloon10.backgroundImageForState(.Normal)!)
            // image changes to whitebg
            balloon10.setBackgroundImage(UIImage(named: "whitebg.jpg"), forState: .Normal)
            // add letter to text box
            textBox.text = textBox.text! + balloon10.currentTitle!
            // letter disappears
            balloon10.setTitle("", forState: .Normal)
            // add button to needToBeReplaced
            needToBeReplaced.append(balloon10)
        }
    }
    
    @IBOutlet weak var balloon11: UIButton!
    @IBAction func tapBalloon11(sender: UIButton) {
        if balloon11.currentBackgroundImage != UIImage(named: "whitebg.jpg") {
            // add background to origBackground
            origBackground.append(balloon11.backgroundImageForState(.Normal)!)
            // image changes to whitebg
            balloon11.setBackgroundImage(UIImage(named: "whitebg.jpg"), forState: .Normal)
            // add letter to text box
            textBox.text = textBox.text! + balloon11.currentTitle!
            // letter disappears
            balloon11.setTitle("", forState: .Normal)
            // add button to needToBeReplaced
            needToBeReplaced.append(balloon11)
        }
    }
    
    @IBOutlet weak var balloon12: UIButton!
    @IBAction func tapBalloon12(sender: UIButton) {
        if balloon12.currentBackgroundImage != UIImage(named: "whitebg.jpg") {
            // add background to origBackground
            origBackground.append(balloon12.backgroundImageForState(.Normal)!)
            // image changes to whitebg
            balloon12.setBackgroundImage(UIImage(named: "whitebg.jpg"), forState: .Normal)
            // add letter to text box
            textBox.text = textBox.text! + balloon12.currentTitle!
            // letter disappears
            balloon12.setTitle("", forState: .Normal)
            // add button to needToBeReplaced
            needToBeReplaced.append(balloon12)
        }
    }
    
    @IBOutlet weak var balloon13: UIButton!
    @IBAction func tapBalloon13(sender: UIButton) {
        if balloon13.currentBackgroundImage != UIImage(named: "whitebg.jpg") {
            // add background to origBackground
            origBackground.append(balloon13.backgroundImageForState(.Normal)!)
            // image changes to whitebg
            balloon13.setBackgroundImage(UIImage(named: "whitebg.jpg"), forState: .Normal)
            // add letter to text box
            textBox.text = textBox.text! + balloon13.currentTitle!
            // letter disappears
            balloon13.setTitle("", forState: .Normal)
            // add button to needToBeReplaced
            needToBeReplaced.append(balloon13)
        }
    }
    
    @IBOutlet weak var balloon14: UIButton!
    @IBAction func tapBalloon14(sender: UIButton) {
        if balloon14.currentBackgroundImage != UIImage(named: "whitebg.jpg") {
            // add background to origBackground
            origBackground.append(balloon14.backgroundImageForState(.Normal)!)
            // image changes to whitebg
            balloon14.setBackgroundImage(UIImage(named: "whitebg.jpg"), forState: .Normal)
            // add letter to text box
            textBox.text = textBox.text! + balloon14.currentTitle!
            // letter disappears
            balloon14.setTitle("", forState: .Normal)
            // add button to needToBeReplaced
            needToBeReplaced.append(balloon14)
        }
    }
    
    @IBOutlet weak var balloon15: UIButton!
    @IBAction func tapBalloon15(sender: UIButton) {
        if balloon15.currentBackgroundImage != UIImage(named: "whitebg.jpg") {
            // add background to origBackground
            origBackground.append(balloon15.backgroundImageForState(.Normal)!)
            // image changes to whitebg
            balloon15.setBackgroundImage(UIImage(named: "whitebg.jpg"), forState: .Normal)
            // add letter to text box
            textBox.text = textBox.text! + balloon15.currentTitle!
            // letter disappears
            balloon15.setTitle("", forState: .Normal)
            // add button to needToBeReplaced
            needToBeReplaced.append(balloon15)
        }
    }
    
    @IBOutlet weak var balloon16: UIButton!
    @IBAction func tapBalloon16(sender: UIButton) {
        if balloon16.currentBackgroundImage != UIImage(named: "whitebg.jpg") {
            // add background to origBackground
            origBackground.append(balloon16.backgroundImageForState(.Normal)!)
            // image changes to whitebg
            balloon16.setBackgroundImage(UIImage(named: "whitebg.jpg"), forState: .Normal)
            // add letter to text box
            textBox.text = textBox.text! + balloon16.currentTitle!
            // letter disappears
            balloon16.setTitle("", forState: .Normal)
            // add button to needToBeReplaced
            needToBeReplaced.append(balloon16)
        }
    }
    
    @IBOutlet weak var balloon17: UIButton!
    @IBAction func tapBalloon17(sender: UIButton) {
        if balloon17.currentBackgroundImage != UIImage(named: "whitebg.jpg") {
            // add background to origBackground
            origBackground.append(balloon17.backgroundImageForState(.Normal)!)
            // image changes to whitebg
            balloon17.setBackgroundImage(UIImage(named: "whitebg.jpg"), forState: .Normal)
            // add letter to text box
            textBox.text = textBox.text! + balloon17.currentTitle!
            // letter disappears
            balloon17.setTitle("", forState: .Normal)
            // add button to needToBeReplaced
            needToBeReplaced.append(balloon17)
        }
    }
    
    @IBOutlet weak var balloon18: UIButton!
    @IBAction func tapBalloon18(sender: UIButton) {
        if balloon18.currentBackgroundImage != UIImage(named: "whitebg.jpg") {
            // add background to origBackground
            origBackground.append(balloon18.backgroundImageForState(.Normal)!)
            // image changes to whitebg
            balloon18.setBackgroundImage(UIImage(named: "whitebg.jpg"), forState: .Normal)
            // add letter to text box
            textBox.text = textBox.text! + balloon18.currentTitle!
            // letter disappears
            balloon18.setTitle("", forState: .Normal)
            // add button to needToBeReplaced
            needToBeReplaced.append(balloon18)
        }
    }
    
    @IBOutlet weak var balloon19: UIButton!
    @IBAction func tapBalloon19(sender: UIButton) {
        if balloon19.currentBackgroundImage != UIImage(named: "whitebg.jpg") {
            // add background to origBackground
            origBackground.append(balloon19.backgroundImageForState(.Normal)!)
            // image changes to whitebg
            balloon19.setBackgroundImage(UIImage(named: "whitebg.jpg"), forState: .Normal)
            // add letter to text box
            textBox.text = textBox.text! + balloon19.currentTitle!
            // letter disappears
            balloon19.setTitle("", forState: .Normal)
            // add button to needToBeReplaced
            needToBeReplaced.append(balloon19)
        }
    }
    
    @IBOutlet weak var balloon20: UIButton!
    @IBAction func tapBalloon20(sender: UIButton) {
        if balloon20.currentBackgroundImage != UIImage(named: "whitebg.jpg") {
            // add background to origBackground
            origBackground.append(balloon20.backgroundImageForState(.Normal)!)
            // image changes to whitebg
            balloon20.setBackgroundImage(UIImage(named: "whitebg.jpg"), forState: .Normal)
            // add letter to text box
            textBox.text = textBox.text! + balloon20.currentTitle!
            // letter disappears
            balloon20.setTitle("", forState: .Normal)
            // add button to needToBeReplaced
            needToBeReplaced.append(balloon20)
        }
    }
    
    @IBOutlet weak var doneButton: UIButton!
    @IBAction func tapDone(sender: UIButton) {
        let finalWord = textBox.text?.lowercaseString
        if (finalWord!.characters.count > 0) {
            // check word
            if check(finalWord!) {
                score += (finalWord?.characters.count)! * 10
                scoreBox.text = String(score)
                validBox.text = "\"" + finalWord!.capitalizedString + "\" is a valid word."
            } else {
                validBox.text = "\"" + finalWord!.capitalizedString + "\" is not a valid word."
            }
            
            // clear text box
            textBox.text = ""
            // replace balloons and letters
            for i in 0...needToBeReplaced.count-1 {
                needToBeReplaced[i].setBackgroundImage(origBackground[i], forState: .Normal)
                if (i % 4 == 0) {
                    needToBeReplaced[i].setTitle(generateVowel(), forState: .Normal)
                } else if i % 4 == 1 {
                    needToBeReplaced[i].setTitle(generateLetter1(), forState: .Normal)
                } else if i % 4 == 2 {
                    needToBeReplaced[i].setTitle(generateLetter2(), forState: .Normal)
                } else {
                    needToBeReplaced[i].setTitle(generateLetter3(), forState: .Normal)
                }
            }
        }
        
        needToBeReplaced.removeAll()
        origBackground.removeAll()
    }
    
    @IBOutlet weak var restartButton: UIButton!
    @IBAction func tapRestart(sender: UIButton) {
        //        var t2 = NSTimer.init(timeInterval: 1.0, target:  self, selector: #selector(GameViewController.update), userInfo: nil, repeats: true)
        //        NSRunLoop.currentRunLoop().addTimer(t2, forMode: NSRunLoopCommonModes)
        
        if let timer = currentTimer {
            timer.invalidate()
        }
        
        currentTimer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: #selector(GameViewController.update), userInfo: nil, repeats: true)
        
        allBalloons = [balloon1, balloon2, balloon3, balloon4, balloon5, balloon6, balloon7, balloon8, balloon9, balloon10, balloon11, balloon12, balloon13, balloon14, balloon15, balloon16, balloon17, balloon18, balloon19, balloon20]
        
        for balloon: UIButton in allBalloons {
            let n = randomNumber(1...4)
            let letter: String
            if n == 1 {
                letter = generateVowel()
            } else if n == 2 {
                letter = generateLetter1()
            } else if n == 3 {
                letter = generateLetter2()
            } else {
                letter = generateLetter3()
            }
            
            balloon.setTitle(letter, forState: .Normal)
        }
        
        if needToBeReplaced.count > 0 {
            // replace balloons and letters
            for i in 0...needToBeReplaced.count-1 {
                needToBeReplaced[i].setBackgroundImage(origBackground[i], forState: .Normal)
                if (i % 4 == 0) {
                    needToBeReplaced[i].setTitle(generateVowel(), forState: .Normal)
                } else if i % 4 == 1 {
                    needToBeReplaced[i].setTitle(generateLetter1(), forState: .Normal)
                } else if i % 4 == 2 {
                    needToBeReplaced[i].setTitle(generateLetter2(), forState: .Normal)
                } else {
                    needToBeReplaced[i].setTitle(generateLetter3(), forState: .Normal)
                }
            }
        }
        
        restartButton.setTitle("Restart", forState: .Normal)
        
        // clear text boxes and restart time & score
        textBox.text = ""
        timeBox.text = "90"
        time = 90
        scoreBox.text = "0"
        score = 0
        
        needToBeReplaced.removeAll()
        origBackground.removeAll()
        
    }
    
    func generateVowel() -> String {
        let vowels = ["A", "E", "I", "O", "U", "T"]
        let n = randomNumber(0...vowels.count-1)
        return vowels[n]
    }
    
    func generateLetter1() -> String {
        let letters = ["B", "D", "S", "T", "M", "I", "N", "R", "Y", "J"]
        let n = randomNumber(0...letters.count-1)
        return letters[n]
    }
    
    func generateLetter2() -> String {
        let letters = ["C", "F", "E", "G", "N", "Q", "L", "W", "X", "O"]
        let n = randomNumber(0...letters.count-1)
        return letters[n]
    }
    
    func generateLetter3() -> String {
        let letters = ["A", "S", "R", "M", "K", "H", "V", "Z", "P"]
        let n = randomNumber(0...letters.count-1)
        return letters[n]
    }
    
    func randomNumber(range: Range<Int> = 1...6) -> Int {
        let min = range.startIndex
        let max = range.endIndex
        return Int(arc4random_uniform(UInt32(max - min))) + min
    }
    
    // array of dictionary words
    func appendWords() {
        let filepath = NSBundle.mainBundle().pathForResource("words", ofType: "txt")!
        let contents = readFile(filepath)
        contents?.enumerateLines {
            line, stop in
            if line != "" {
                self.dictionary.insert(line)
            }
        }
    }
    
    // checks if the word is valid or not
    func check(str: String) -> Bool {
        return dictionary.contains(str)
    }
    
    // reads a file
    func readFile(filePath: String) -> String? {
        do {
            let str = try String(contentsOfFile: filePath)
            return str
        } catch {
            return nil
        }
    }
    
    
}
