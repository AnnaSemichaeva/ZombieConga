//
//  GameScene.swift
//  ZombieConga
//
//  Created by macuser on 4/2/22.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    let zombie = SKSpriteNode(imageNamed: "zombie1")
    
    let lastUpdateTime: TimeInterval = 0
    var dt: TimeInterval = 0
    
    override func didMove(to view: SKView) {
        backgroundColor = .black
        
        let background = SKSpriteNode(imageNamed: "background1")
        background.anchorPoint = CGPoint(x: 0.5, y: 0.5) //default
        background.position = CGPoint(x: size.width/2, y: size.height/2)
        background.zPosition = -1
        addChild(background)
        
        zombie.position = CGPoint(x: 400, y: 400)
        addChild(zombie)
        
        
    }
    
    override func update(_ currentTime: TimeInterval) {
        
        if lastUpdateTime > 0 {
            dt = currentTime - lastUpdateTime
        } else {
            dt = 0
        }
        zombie.position = CGPoint(x: zombie.position.x + 8, y: zombie.position.y)
    }
    
}
