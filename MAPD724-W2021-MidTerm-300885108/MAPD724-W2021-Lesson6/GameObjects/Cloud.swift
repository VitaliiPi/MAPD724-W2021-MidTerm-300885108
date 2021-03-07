//
//  Cloud.swift
//  MAPD724_Midterm_Test
//
//  Created by vitalii on 2021-03-07.
//  Copyright © 2021 Vitalii. All rights reserved.
//
//  Midterm Test - Modify Mail Pilot
//  Version: 1.0 - Modify Mail Pilot
//
//  Student Name: Vitalii Pielievin
//  Student ID:   300885108
//  Date Started: 2021/03/07
//
//  Mail Pilot is a simpla game which works in a landscape mode.
//  User is able to pilot a plane, by flying over islands he will recieve +100 to his score, on the other hand, flying into clouds will result in -1 live per one cloud.
//

import SpriteKit
import GameplayKit

class Cloud: GameObject
{
    
    // constructor
    init()
    {
        super.init(imageString: "cloud", initialScale: 1.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // LifeCycle Functions
    
    override func CheckBounds()
    {
        // changes axis - landscape
        if(position.x <= -756)
        {
            Reset()
        }
    }
    
    override func Reset()
    {
        // changes axis - landscape
        dx = CGFloat((randomSource?.nextUniform())! * 5.0) + 5.0
        dy = CGFloat((randomSource?.nextUniform())! * -4.0) + 2.0
        
        // get a pseudo-random number from -262 to 262 =
        // changes axis - landscape
        let randomX:Int = (randomSource?.nextInt(upperBound: 524))! - 262
        position.y = CGFloat(randomX)
        
        let randomY:Int = (randomSource?.nextInt(upperBound: 10))! + 756
        position.x = CGFloat(randomY)
        
        isColliding = false
    }
    
    // initialization
    override func Start()
    {
        zPosition = 3
        alpha = 0.5
        Reset()
    }
    
    override func Update()
    {
        Move()
        CheckBounds()
    }
    
    func Move()
    {
        position.y -= dy!
        position.x -= dx!
    }
}
