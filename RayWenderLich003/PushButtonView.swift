//
//  PushButtonView.swift
//  RayWenderLich003
//
//  Created by ericzhou on 11/12/15.
//  Copyright © 2015 Eric Zhou. All rights reserved.
//

import UIKit
@IBDesignable
class PushButtonView: UIButton {
    @IBInspectable var fillColor: UIColor = UIColor.greenColor()
    @IBInspectable var isAddButton: Bool = true

    //the view is new to the screen
    //other views on top of it are moved
    //the veiw's hidden property is changed
    //your app explicitly calls the setNeedsDisplay() or setNeedDisplayInRect() methods on the view
    override func drawRect(rect: CGRect) {
        let path = UIBezierPath(ovalInRect: rect)
        fillColor.setFill()
        path.fill()
            let plusHeight: CGFloat = 3.0
            let plusWidth: CGFloat = min(bounds.width, bounds.height) * 0.6
            let plusPath = UIBezierPath()
            plusPath.lineWidth = plusHeight
            //horizonal line
            plusPath.moveToPoint(CGPointMake(bounds.width/2 - plusWidth/2 + 0.5, bounds.height/2 + 0.5))
            plusPath.addLineToPoint(CGPointMake(bounds.width/2 + plusWidth/2 + 0.5, bounds.height/2 + 0.5))
            //vertical line
        if isAddButton {

            plusPath.moveToPoint(CGPointMake(bounds.height/2 + 0.5, bounds.width/2 - plusWidth/2 + 0.5))
            plusPath.addLineToPoint(CGPointMake(bounds.height/2 + 0.5,bounds.width/2 + plusWidth/2 + 0.5))
        }
            UIColor.whiteColor().setStroke()
            plusPath.stroke()
    }
    //setNeedDisplay()does not itself call drawRect(_:) but it flags the view as dirty triggering a redraw using drawRect(_:) onthe next screen update cycle. even if you cal setNeedDisplay() five times in the same method you will only ever actually call drawRect once
}
