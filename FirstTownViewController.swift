//
//  FirstTownViewController.swift
//  OregonBound
//
//  Created by Yasoob  Rasheed on 8/9/15.
//  Copyright © 2015 Yasoob Rasheed. All rights reserved.
//

import UIKit

class roadTripItems {
    static var money: CGFloat = 1000.00
    static var tools = [String]()
    static var spareTires = [String]()
    static var backupEngines = [String]()
    static var rifles = [String]()
    static var rifleAmmo = [String]()
    static var fuel = [String]()
    static var clothes = [String]()
    static var food = [String]()
}

extension UIImage {
    public func imageRotatedByBegrees(degrees: CGFloat, flip: Bool) -> UIImage {
        let degreesToRadians: (CGFloat) -> CGFloat = {
            return $0 / 180.0 * CGFloat(M_PI) //degrees / 180 * pi
        }
        //CGPointZero sets the origin = (0,0)
        //size: takes a CGSize
        //the CGSize size takes the dimensions of the image
        ////Calculate the size of the rotated view's containing box for our drawing space.
        let rotatedViewBox = UIView(frame: CGRect(origin: CGPointZero , size: size))
        //Affine transformations are transformations on the 3-D Plane.
        let t = CGAffineTransformMakeRotation(degreesToRadians(degrees))
        //calls the transform property to allow rotatedViewBox to equal the AffineRotation
        rotatedViewBox.transform = t
        let rotatedSize = rotatedViewBox.frame.size
        
        ////Create the bitmap context
        UIGraphicsBeginImageContext(rotatedSize)
        let bitmap = UIGraphicsGetCurrentContext()
        
        ////Move the origin to the middle of the image so we will rotate and scale around the center of the image
        CGContextTranslateCTM(bitmap, rotatedSize.width / 2.0, rotatedSize.height / 2.0)
        
        ////Rotate the Image Context
        CGContextRotateCTM(bitmap, degreesToRadians(degrees))
        
        ////Draw the rotated or scaled image intot he context
        var yFlip: CGFloat
        
        if (flip) {
            yFlip = CGFloat(-1.0)
        } else {
            yFlip = CGFloat(1.0)
        }
        
        CGContextScaleCTM(bitmap, yFlip, -1.0)
        CGContextDrawImage(bitmap, CGRectMake(-size.width / 2.0, -size.height / 2.0, size.width, size.height), CGImage)
        
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return newImage
    }
}

class FirstTownViewController: UIViewController {
    
    @IBOutlet weak var image1Reflection: UIImageView!
    @IBOutlet weak var image2Reflection: UIImageView!
    @IBOutlet weak var image3Reflection: UIImageView!
    @IBOutlet weak var image4Reflection: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        image1Reflection.image = image1Reflection.image?.imageRotatedByBegrees(180, flip: false)
        image2Reflection.image = image2Reflection.image?.imageRotatedByBegrees(180, flip: false)
        image3Reflection.image = image3Reflection.image?.imageRotatedByBegrees(180, flip: false)
        image4Reflection.image = image4Reflection.image?.imageRotatedByBegrees(180, flip: false)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
