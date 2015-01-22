//
//  Balloons.swift
//  99BalloonChallenge
//
//  Created by Casey Yu on 1/22/15.
//  Copyright (c) 2015 Casey Yu. All rights reserved.
//

import Foundation
import UIKit

struct Balloon{
    var balloonNumber = 0
    var imagePath = ""
    var imageCount = 4
    
    func RandomGetImage() -> Int {
        
        return Int(arc4random_uniform(UInt32(5)))
    }
    
    func GetBalloonImageNames() -> String {
        //Dynamically loading all image names
        var preFixImageName: String = "RedBalloon"
        var postFixImageName: String = ".jpg"
        var imageNames:[String] = []
        
        for var i = 1; i <= imageCount; i++ {
            var fileName = preFixImageName + String(i) + postFixImageName;
            
            imageNames += [fileName]
        }
        
        var randomNumber = Int(arc4random_uniform(UInt32(imageCount)))
        var returnedImagePath: String
        switch randomNumber{
        case 1:
            returnedImagePath = imageNames[0]
        case 2:
            returnedImagePath = imageNames[1]
        case 3:
            returnedImagePath = imageNames[2]
        case 4:
            returnedImagePath = imageNames[3]
        default:
            returnedImagePath = imageNames[0]
            
        }
        
        return returnedImagePath
    }
}
