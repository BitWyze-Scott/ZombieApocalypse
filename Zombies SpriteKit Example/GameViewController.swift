//
//  GameViewController.swift
//  Zombies SpriteKit Example
//
//  Created by Scott Richards on 1/10/25.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let view = self.view as! SKView? {
            // Load the SKScene from 'GameScene.sks'
            if let scene = GameScene(fileNamed: "GameScene") {
                // Set the scale mode to scale to fit the window
                scene.scaleMode = .aspectFit
//                scene.size = view.bounds.size // Match the scene size to the view's size
                // Present the scene
                view.presentScene(scene)
            }
            
            view.ignoresSiblingOrder = true
            
            view.showsFPS = true
            view.showsNodeCount = true
            view.ignoresSiblingOrder = true
        }
        
        // Original default Game Code
        // Load 'GameScene.sks' as a GKScene. This provides gameplay related content
        // including entities and graphs.
//        if let scene = GKScene(fileNamed: "GameScene") {
//            
//            // Get the SKScene from the loaded GKScene
//            if let sceneNode = scene.rootNode as! GameScene? {
//                
//                // Copy gameplay related content over to the scene
////                sceneNode.entities = scene.entities
////                sceneNode.graphs = scene.graphs
//                
//                // Set the scale mode to scale to fit the window
//                sceneNode.scaleMode = .aspectFill
//                
//                // Present the scene
//                if let view = self.view as! SKView? {
//                    view.presentScene(sceneNode)
//                    
//                    view.ignoresSiblingOrder = true
//                    
//                    view.showsFPS = true
//                    view.showsNodeCount = true
//                }
//            }
//        }
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
