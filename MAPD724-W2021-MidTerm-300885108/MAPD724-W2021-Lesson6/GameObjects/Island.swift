//
//  Island.swift
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

class Island: GameObject
{
    
    // constructor
    init()
    {
        super.init(imageString: "island", initialScale: 2.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // LifeCycle Functions
    
    override func CheckBounds()
    {
        if(position.x <= -730)
        {
            Reset()
        }
    }
    
    override func Reset()
    {
        position.x = 730
        // get a pseudo-random number from -313 to 313 =
        let randomX:Int = (randomSource?.nextInt(upperBound: 626))! - 313
        position.y = CGFloat(randomX)
        isColliding = false
    }
    
    // initialization
    override func Start()
    {
        zPosition = 1
        Reset()
        dy = 5.0
    }
    
    override func Update()
    {
        Move()
        CheckBounds()
    }
    
    func Move()
    {
        position.x -= dy!
    }
}
