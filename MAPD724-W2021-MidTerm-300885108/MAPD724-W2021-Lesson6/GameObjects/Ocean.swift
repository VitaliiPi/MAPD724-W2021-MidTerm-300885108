//
//  Ocean.swift
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

class Ocean: GameObject
{
    
    // constructor
    init()
    {
        super.init(imageString: "ocean", initialScale: 2.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // LifeCycle Functions
    
    override func CheckBounds()
    {
        if(position.x <= -700)
        {
            Reset()
        }
    }
    
    override func Reset()
    {
        position.x = 0
    }
    
    // initialization
    override func Start()
    {
        zPosition = 0
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
