//
//  Plane.swift
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

class Plane: GameObject
{
    
    // constructor
    init()
    {
        super.init(imageString: "plane", initialScale: 2.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // LifeCycle Functions
    
    override func CheckBounds()
    {
        // constrain on the left - left boundary
        if(position.y <= -310)
        {
            position.y = -310
        }
        
        // constrain on the right - right boundary
        if(position.y >= 310)
        {
            position.y = 310
        }
        
    }
    
    override func Reset()
    {
       
    }
    
    // initialization
    override func Start()
    {
        zRotation = -.pi / 2
        zPosition = 2
    }
    
    override func Update()
    {
        CheckBounds()
    }
    
    func TouchMove(newPos: CGPoint)
    {
        position = newPos
    }
}
