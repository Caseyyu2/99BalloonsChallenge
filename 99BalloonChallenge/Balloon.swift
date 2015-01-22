//
//  Ballon.swift
//  99BalloonChallenge
//
//  Created by Casey Yu on 1/22/15.
//  Copyright (c) 2015 Casey Yu. All rights reserved.
//

import Foundation
import UIKit

struct Balloon{
    var balloonNumber: Int
    var imagePath = ""
    
    func randomGetImage() -> Int {
        
        return Int(arc4random_uniform(UInt32(5)))
    }
    
}
