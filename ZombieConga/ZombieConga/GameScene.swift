//
//  GameScene.swift
//  ZombieConga
//
//  Created by admin on 16/4/13.
//  Copyright (c) 2016年 admin. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    let zoombi = SKSpriteNode(imageNamed:"zombie1")
    var lastUpdateTime: NSTimeInterval = 0
    var dt: NSTimeInterval = 0.0
    let zombieMovePointsPerSec: CGFloat = 480.0
    var velocity = CGPoint.zero
    
    override func didMoveToView(view: SKView) {
        
    
// MARK: - Background
        backgroundColor = SKColor.blackColor()
        let background = SKSpriteNode(imageNamed:"background1")
        background.anchorPoint = CGPointZero
        background.position = CGPointZero
        
        //如果设置了不同时加载子视图，就会根据zPosition的数值从低到高绘画,zPosition默认是0
        background.zPosition = -1
        
        //根据anchorPoint设置的位置来旋转
        //background.zRotation = CGFloat(M_PI) / 8
        addChild(background)
        
// MARK: - Zoombi
        zoombi.position = CGPointMake(400, 400)
//        zoombi.setScale(2)
        addChild(zoombi)
        
        
    }
    
    override func update(currentTime: NSTimeInterval) {
        /*
         这里的Updata 是根据FPS 帧数来刷新，如果控件多的时候，帧数下降会导致控件刷新如距离出现偏差，严重可能会停止刷新
         方法:按时间刷新，控件在指定时间完成事件，根据dt的单位，获得方法看下面，这里分母例子是秒，每秒移动距离 * (dt/x秒) = 每x秒移动多少距离。
         */
 
        if lastUpdateTime > 0.0 {
            dt = currentTime - lastUpdateTime
        } else {
            dt = 0
        }
        print("currenttime = \(currentTime)")
        
        lastUpdateTime = currentTime
        print("lastUpdateTime = \(lastUpdateTime)")
        print("\(dt*1000) milliseconds since last update")
//        zoombi.position = CGPoint(x: zoombi.position.x + 8,
//                                  y: zoombi.position.y)
    }
}
