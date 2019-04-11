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
        eventSubscription()
    }
    
    @IBOutlet var myViews: [MyView]!
    
    @IBOutlet weak var viewBack: MyView!
    
    
    
    private func eventSubscription () {
        for i in 0..<myViews.count {
            myViews[i].addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tappedHandler(tap:))))
        }
    }
    
     @objc func tappedHandler(tap: UITapGestureRecognizer) {
       let myView = tap.view as? MyView
        
        if let figureSides = myView?.sides {
            viewBack.sides = figureSides
        }
//        for myView in myViews {
//            myView.isHidden = true
//        }
//
        viewBack.isHidden = false

    }
    
    
    
}

