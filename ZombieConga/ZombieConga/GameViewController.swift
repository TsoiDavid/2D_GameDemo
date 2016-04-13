//
//  GameViewController.swift
//  ZombieConga
//
//  Created by admin on 16/4/13.
//  Copyright (c) 2016年 admin. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let scene = GameScene(size:CGSize(width:2048,height:1536))
        scene.scaleMode = .AspectFill
        
        let skView = self.view as! SKView
        skView.showsFPS = true
        skView.showsNodeCount = true
        /*
         If ignoresSiblingOrder is true, Sprite Kit makes no guarantees as to the order in which it draws each node’s children with the same zPosition.
         不会同时加载子视图
         • If ignoresSiblingOrder is false, Sprite Kit will draw each node’s children with the same zPosition in the order in which they were added to their parent.
         同时加载子视图
         **一般都开启这个，运行速度会更快。
         */
        skView.ignoresSiblingOrder = true
        skView.presentScene(scene)
        
    }
   
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}
