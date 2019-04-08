//
//  ViewController.swift
//  DrawingApp
//
//  Created by Crafter on 4/7/19.
//  Copyright © 2019 Crafter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myView1 = MyView(sides: 0, point: CGPoint(x: 30, y: 100), backgroundColor: #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1))
        let myView2 = MyView(sides: 1, point: CGPoint(x: 150, y: 100), backgroundColor: #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1))
        let myView3 = MyView(sides: 2, point: CGPoint(x: 270, y: 100), backgroundColor: #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1))
        let myView4 = MyView(sides: 3, point: CGPoint(x: 30, y: 300), backgroundColor: #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1))
        let myView5 = MyView(sides: 5, point: CGPoint(x: 150, y: 300), backgroundColor: #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1))
        let myView6 = MyView(sides: 8, point: CGPoint(x: 270, y: 300), backgroundColor: #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1))
     
        
        self.view.addSubview(myView1)
        self.view.addSubview(myView2)
        self.view.addSubview(myView3)
        self.view.addSubview(myView4)
        self.view.addSubview(myView5)
        self.view.addSubview(myView6)
        
                
    }
}

