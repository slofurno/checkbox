//
//  CheckBox.swift
//  checkBox
//
//  Created by XCodeClub on 2015-02-15.
//  Copyright (c) 2015 XCodeClub. All rights reserved.
//

import UIKit
import QuartzCore

class CheckBox: UIControl {

    var checked:Bool = false{
        didSet {
            setNeedsDisplay()
        }
    }
    //let trackLayer = CALayer()
   // let lowerThumbLayer = CALayer()
    //let upperThumbLayer = CALayer()
    
    var thumbWidth: CGFloat {
        return CGFloat(bounds.height)
    }
    
    override var frame: CGRect {
        didSet {
            updateLayerFrames()
        }
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        //trackLayer.backgroundColor = UIColor.blueColor().CGColor
        //layer.addSublayer(trackLayer)
        self.backgroundColor = UIColor.clearColor()
        updateLayerFrames()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        self.backgroundColor = UIColor.clearColor()
    }
    
    func updateLayerFrames() {
      //  trackLayer.frame = bounds.rectByInsetting(dx: 0.0, dy: 0.0)
       // trackLayer.setNeedsDisplay()
        
        
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {

        self.checked = !self.checked
        sendActionsForControlEvents(.ValueChanged)
    }
    
    /*
func positionForValue(value: Double) -> Double {
        return Double(bounds.width - thumbWidth) * (value - minimumValue) /
            (maximumValue - minimumValue) + Double(thumbWidth / 2.0)
    }
*/
    
    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        
        
        
        let context = UIGraphicsGetCurrentContext()
        
        CGContextClearRect(context, rect);
        
        CGContextSetRGBFillColor(context, 1.0,1.0,1.0,1.0);
        CGContextFillRect(context,rect)
        
        
        let width = rect.width
        let height=rect.height
        
        CGContextSetLineWidth(context, 4.0)
        CGContextSetStrokeColorWithColor(context,
            UIColor.lightGrayColor().CGColor)
        
        
       
        
         let rectangle = CGRect(x:4,y:4, width:rect.width-8,height:rect.height-8)
        

        
        CGContextAddRect(context, rectangle)
        CGContextStrokePath(context)
        
        if self.checked {
            
            
            CGContextSetStrokeColorWithColor(context,
                UIColor.blackColor().CGColor)
            
            
            var path = UIBezierPath()
          
            path.moveToPoint(CGPoint(x: 0, y: rect.height*0.66))
            path.addLineToPoint(CGPoint(x: rect.width*0.33, y:rect.height ))
           path.addLineToPoint(CGPoint(x: rect.width, y: 0))
            
           //  strokeColor.setStroke()
            path.lineWidth=6
            path.stroke()
            
            
        
        }
        else{
            //CGContextSetRGBFillColor(context, 1.0,1.0,1.0,1.0);
            /*
            CGContextMoveToPoint(context, 16, rect.height*0.66)
            CGContextAddLineToPoint(context, rect.width*0.66, rect.height-16)
            CGContextMoveToPoint(context, rect.width*0.66, rect.height-16)
            CGContextAddLineToPoint(context, rect.width-16, 16)
           
            */
        }
       
  
    }
    

}
