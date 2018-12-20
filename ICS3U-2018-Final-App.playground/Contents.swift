
// Created on: Dec-2018
// Created by: Natalie Beshara
// Created for: ICS3U
// This program is the template for the ICS3U final project

// this will be commented out when code moved to Xcode
import PlaygroundSupport


import SpriteKit

class GameScene: SKScene {
    // local variables to this scene
    let splashSceneBackground = SKSpriteNode(imageNamed: "splashSceneImage.png")
    let moveToNextSceneDelay = SKAction.wait(forDuration: 3.0)
    
    override func didMove(to view: SKView) {
        // this is run when the scene loads
        
        /* Setup your scene here */
        self.backgroundColor = SKColor(red: 0.0, green:0.0, blue:0.0, alpha: 1.0)
        
        splashSceneBackground.name = "splash Scene Background"
        splashSceneBackground.position = CGPoint(x: frame.midX, y: frame.midY)
        splashSceneBackground.size = CGSize(width: frame.size.width, height: frame.size.height)
        self.addChild(splashSceneBackground)
        
        splashSceneBackground.run(moveToNextSceneDelay) {
            //run code here after 3 secs
            
            self.splashSceneBackground.removeAllActions()
            let gameLogoScene = GameLogoScene(size: self.size)
            self.view?.presentScene(gameLogoScene)
        }
    }
    
    override func  update(_ currentTime: TimeInterval) {
        //
        
    }
    
    func didBegin(_ contact: SKPhysicsContact) {
        //
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //when the screen is touched, it moves to the main menu
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        //
        
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        //
    }
}

class GameLogoScene: SKScene, SKPhysicsContactDelegate {
    // local variables to this scene
    let snakeLabel = SKLabelNode(fontNamed: "Zapfino")
    let snakeImage = SKSpriteNode(imageNamed: "IMG_5475.PNG")
    //snakeImagae: https://www.clipartmax.com/middle/m2i8i8d3N4K9K9H7_snake-clipart-snakeclipart-snake-clip-art-animals-cartoon-snake-transparent-background/
    let moveToNextSceneDelay = SKAction.wait(forDuration: 3.0)
    
    override func didMove(to view: SKView) {
        // this is run when the scene loads
        
        /* Setup your scene here */
        self.backgroundColor = SKColor(red: 0.0, green: 1.0, blue: 0.65, alpha: 1.0)
        
        snakeLabel.text = "Snake"
        snakeLabel.zPosition = 1.0
        snakeLabel.horizontalAlignmentMode = SKLabelHorizontalAlignmentMode.right
        snakeLabel.fontColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        snakeLabel.fontSize = 80
        snakeLabel.position = CGPoint(x: (frame.midX - 50), y: frame.midY + 50)
        self.addChild(snakeLabel)
        
        snakeImage.position = CGPoint(x: (frame.midX + 50), y: frame.midY - 50)
        snakeImage.name = "game logo"
        snakeImage.zPosition = 2.0
        self.addChild(snakeImage)
        snakeImage.setScale(0.75)
        
        snakeImage.run(moveToNextSceneDelay) {
            //run code here after 3 secs
            
            self.snakeImage.removeAllActions()
            let mainMenuScene = MainMenuScene(size: self.size)
            self.view?.presentScene(mainMenuScene)
        }
    }
    
    override func  update(_ currentTime: TimeInterval) {
        //
        
    }
    
    func didBegin(_ contact: SKPhysicsContact) {
        //
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // when the start button is touched, it moves to the main game
        
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        //
        
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        //
        
        
        }
    
}
class MainMenuScene: SKScene, SKPhysicsContactDelegate {
    // local variables to this scene
    let snakeLabel = SKLabelNode(fontNamed: "Superclarendon-BlackItalic")
    let snakeImage = SKSpriteNode(imageNamed: "IMG_5459.PNG")
    //snakeImage: https://pixabay.com/en/snake-reptile-lizard-nature-145409/
    let settingsButton = SKSpriteNode(imageNamed: "IMG_5471.PNG")
    //settingsButton image: https://www.iconfinder.com/icons/311145/preferences_settings_tools_icon
    let startButton = SKSpriteNode(imageNamed: "IMG_5477.PNG")
    // startButton: https://www.kisspng.com/png-button-logo-icon-the-start-button-161880/
    
    override func didMove(to view: SKView) {
        // this is run when the scene loads
        
        /* Setup your scene here */
        self.backgroundColor = SKColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 1.0)
        
        snakeLabel.text = "Snake"
        snakeLabel.zPosition = 1.0
        //snakeLabel.horizontalAlignmentMode = SKLabelHorizontalAlignmentMode.left
        snakeLabel.fontColor = #colorLiteral(red: 0.34117648005485535, green: 0.6235294342041016, blue: 0.16862745583057404, alpha: 1.0)
        snakeLabel.fontSize = 85
        snakeLabel.position = CGPoint(x: (frame.midX), y: frame.midY + 50)
        self.addChild(snakeLabel)
        
        snakeImage.position = CGPoint(x: frame.midX , y: frame.midY - 40)
        snakeImage.name = "snake image"
        snakeImage.zPosition = 2.0
        self.addChild(snakeImage)
        snakeImage.setScale(0.5)
        
        settingsButton.position = CGPoint(x: frame.maxX - 50, y: frame.size.height - 50)
        settingsButton.name = "settings button"
        settingsButton.zPosition = 3.0
        self.addChild(settingsButton)
        settingsButton.setScale(0.15)
        
        startButton.position = CGPoint(x: frame.size.width / 2, y: 100)
        startButton.name = "start button"
        startButton.zPosition = 4.0
        self.addChild(startButton)
        startButton.setScale(0.45)
    }
    
    override func  update(_ currentTime: TimeInterval) {
        //
        
    }
    
    func didBegin(_ contact: SKPhysicsContact) {
        //
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // when the start button is touched, it moves to the main game
        
        let touch = touches as! Set<UITouch>
        let positionInScene = touch.first!.location(in: self)
        let touchedNode = self.atPoint(positionInScene)
        
        if let startButton = touchedNode.name {
            if startButton == "start button" {
                let mainGameScene = MainGameScene(size: self.size)
                self.view!.presentScene(mainGameScene)
            }
        }
        
        if let settingsButton = touchedNode.name {
            if settingsButton == "settings button" {
                let settingsScene = SettingsScene(size: self.size)
                self.view!.presentScene(settingsScene)
            }
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        //
        
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        //
        
        
    }
}

class SettingsScene: SKScene, SKPhysicsContactDelegate {
    // local variables to this scene
    let settingsLabel = SKLabelNode(fontNamed: "Superclarendon-BlackItalic")
    let mainMenuButton = SKSpriteNode(imageNamed: "IMG_5485.PNG")
    //mainMenuButton: http://pixelartmaker.com/art/33c9bd8126b9e2d
    //let startButton = SKSpriteNode(imageNamed: "IMG_5477.PNG")
    
    override func didMove(to view: SKView) {
        // this is run when the scene loads
        
        /* Setup your scene here */
        self.backgroundColor = SKColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        settingsLabel.text = "Settings"
        settingsLabel.zPosition = 1.0
        //snakeLabel.horizontalAlignmentMode = SKLabelHorizontalAlignmentMode.left
        settingsLabel.fontColor = #colorLiteral(red: 0.34117648005485535, green: 0.6235294342041016, blue: 0.16862745583057404, alpha: 1.0)
        settingsLabel.fontSize = 85
        settingsLabel.position = CGPoint(x: (frame.midX), y: frame.midY + 50)
        self.addChild(settingsLabel)
        
        mainMenuButton.position = CGPoint(x: frame.midX , y: 100)
        mainMenuButton.name = "main menu button"
        mainMenuButton.zPosition = 2.0
        self.addChild(mainMenuButton)
        mainMenuButton.setScale(0.5)
        
        //startButton.position = CGPoint(x: frame.size.width / 2, y: 100)
        //startButton.name = "settings button"
        //startButton.zPosition = 3.0
        //self.addChild(startButton)
        //startButton.setScale(0.15)
    }
    
    override func  update(_ currentTime: TimeInterval) {
        //
        
    }
    
    func didBegin(_ contact: SKPhysicsContact) {
        //
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // when the start button is touched, it moves to the main game
        
        let touch = touches as! Set<UITouch>
        let positionInScene = touch.first!.location(in: self)
        let touchedNode = self.atPoint(positionInScene)
        
        if let mainMenuButton = touchedNode.name {
            if mainMenuButton == "main menu button" {
                let mainMenuScene = MainMenuScene(size: self.size)
                self.view!.presentScene(mainMenuScene)
            }
        }
        
        //if let settingsButton = touchedNode.name {
        //if settingsButton == "settings button" {
        //let settingsScene = SettingsScene(size: self.size)
        //self.view!.presentScene(settingsScene)
        //}
        //}
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        //
        
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        //
        
        
    }
}

class MainGameScene: SKScene, SKPhysicsContactDelegate {
    // local variables to this scene
    let snakeLabel = SKLabelNode(fontNamed: "Superclarendon-BlackItalic")
    let settingsButton = SKSpriteNode(imageNamed: "IMG_5471.PNG")
    let startButton = SKSpriteNode(imageNamed: "IMG_5477.PNG")
    
    override func didMove(to view: SKView) {
        // this is run when the scene loads
        
        /* Setup your scene here */
        self.backgroundColor = SKColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        snakeLabel.text = "Snake"
        snakeLabel.zPosition = 1.0
        //snakeLabel.horizontalAlignmentMode = SKLabelHorizontalAlignmentMode.left
        snakeLabel.fontColor = #colorLiteral(red: 0.34117648005485535, green: 0.6235294342041016, blue: 0.16862745583057404, alpha: 1.0)
        snakeLabel.fontSize = 85
        snakeLabel.position = CGPoint(x: (frame.midX), y: frame.midY + 50)
        self.addChild(snakeLabel)
        
        settingsButton.position = CGPoint(x: frame.maxX - 50, y: frame.size.height - 50)
        settingsButton.name = "settings button"
        settingsButton.zPosition = 2.0
        self.addChild(settingsButton)
        settingsButton.setScale(0.15)
        
        startButton.position = CGPoint(x: frame.size.width / 2, y: 100)
        startButton.name = "settings button"
        startButton.zPosition = 3.0
        self.addChild(startButton)
        startButton.setScale(0.15)
    }
    
    override func  update(_ currentTime: TimeInterval) {
        //
        
    }
    
    func didBegin(_ contact: SKPhysicsContact) {
        //
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // when the start button is touched, it moves to the main game
        
        let touch = touches as! Set<UITouch>
        let positionInScene = touch.first!.location(in: self)
        let touchedNode = self.atPoint(positionInScene)
        
        if let startButton = touchedNode.name {
            if startButton == "start button" {
                let mainGameScene = MainGameScene(size: self.size)
                self.view!.presentScene(mainGameScene)
            }
        }
        
        if let settingsButton = touchedNode.name {
            if settingsButton == "settings button" {
                let settingsScene = SettingsScene(size: self.size)
                self.view!.presentScene(settingsScene)
            }
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        //
        
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        //
        
        
    }
}

// this will be commented out when code moved to Xcode

// set the frame to be the size for your iPad

let screenSize = UIScreen.main.bounds
let screenWidth = screenSize.width
let screenHeight = screenSize.height
let frame = CGRect(x: 0, y: 0, width: screenWidth, height: screenHeight)

let scene = GameScene(size: frame.size)
scene.scaleMode = SKSceneScaleMode.resizeFill

let skView = SKView(frame: frame)
skView.showsFPS = true
skView.showsNodeCount = true
skView.presentScene(scene)

PlaygroundPage.current.liveView = skView
