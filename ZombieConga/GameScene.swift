//
//  GameScene.swift
//  ZombieConga
//
//  Created by macuser on 4/2/22.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
        backgroundColor = .black
        
        let background = SKSpriteNode(imageNamed: "background1")
        addChild(background)
    }
}
