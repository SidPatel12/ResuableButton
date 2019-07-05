//
//  AddButton.swift
//  ReusableButton
//
//  Created by Siddharth Patel on 05/07/19.
//  Copyright © 2019 solutionanalysts. All rights reserved.
//

import UIKit

@IBDesignable
class AddButton: UIButton {

    @IBInspectable var fillColor:UIColor = UIColor.blue
    @IBInspectable var cornorRaddius: CGFloat = 0
    @IBInspectable var plusH: CGFloat = 0
    @IBInspectable var plusPathColor:UIColor = UIColor.black
    @IBInspectable var isAddButton:Bool = true
    override func draw(_ rect: CGRect) {
        layer.cornerRadius = cornorRaddius
        layer.backgroundColor = fillColor.cgColor
        
        let plusHeight = plusH
        let plusWidth:CGFloat = min(bounds.width, bounds.height) * 0.6
        
        let plusPath = UIBezierPath()
        plusPath.lineWidth = plusHeight
        
        // For minus
        plusPath.move(to: CGPoint(x: bounds.width/2 + plusWidth/2, y: bounds.height/2 + 0.5))
        plusPath.addLine(to: CGPoint(x: bounds.width/2 - plusWidth/2 , y: bounds.height/2 + 0.5))
        
        //For Plus
        if isAddButton{
            plusPath.move(to: CGPoint(x: bounds.width/2 + 0.5, y: bounds.height/2 - plusWidth/2 + 0.5))
            plusPath.addLine(to: CGPoint(x: bounds.width/2 + 0.5 , y: bounds.height/2 + plusWidth/2 + 0.5))
        }
        
        plusPathColor.setStroke()
        plusPath.stroke()
    }
}
