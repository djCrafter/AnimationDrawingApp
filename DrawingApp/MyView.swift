//
//  MyView.swift
//  DrawingApp
//
//  Created by Crafter on 4/8/19.
//  Copyright © 2019 Crafter. All rights reserved.
//

import UIKit


class MyView : UIView {
    var sides: Int?
    init(sides: Int, point: CGPoint, backgroundColor: UIColor) {
        super.init(frame: CGRect(x: point.x, y: point.y, width: 100, height: 150))
        self.sides = sides
        self.backgroundColor = backgroundColor
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func draw(_ rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()!
        
        if sides! > 2 {
            drawFigure(context: context, rect: rect, sides: sides!)
        }
        drawText(rect: rect, text: String(sides!))
    }
    
    func drawFigure(context: CGContext, rect: CGRect, sides: Int){
        
        let radius = Double(rect.maxX - rect.minX)/2
        let length = sin(Double.pi / Double(sides)) * 2.0 * radius
        let angle = -360.0/Double(sides)
        var point = (x: Double(rect.maxX/2) + length/2, y: Double(rect.maxY) - 7)

        context.move(to: CGPoint(x: point.x, y: point.y))

        for i in 1...sides{
            let sinFi = sin(Double(i) * angle * Double.pi / 180.0)
            let cosFi = cos(Double(i) * angle * Double.pi / 180.0)
            
            point.x = point.x + length * cosFi
            point.y = point.y + length * sinFi
            
            context.addLine(to: CGPoint(x: point.x, y: point.y))
        }
        context.closePath()
        context.strokePath()
    }
    
    func drawText(rect: CGRect, text: String){
        let textRect = CGRect(x: (rect.maxX / 2) - 7, y: 25, width: 25, height: 25)
        let attribute: [NSAttributedString.Key : Any] = [.font: UIFont.preferredFont(forTextStyle: .body).withSize(20)]
        (text as NSString).draw(in: textRect, withAttributes: attribute)
    }
}

