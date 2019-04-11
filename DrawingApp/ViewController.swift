//
//  ViewController.swift
//  DrawingApp
//
//  Created by Crafter on 4/7/19.
//  Copyright © 2019 Crafter. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    var flag = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        eventsSubscription()
    }
    
    @IBOutlet var myViews: [MyView]!
    
    @IBOutlet weak var viewBack: MyView!
    
    
    
    private func eventsSubscription () {
        for i in 0..<myViews.count {
            myViews[i].addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tappedHandler(tap:))))
        }
        
        viewBack.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(viewBackTapHandler(tap:))))
    }
    
     @objc func tappedHandler(tap: UITapGestureRecognizer) {
       let myView = tap.view as? MyView
        
        if let figureSides = myView?.sides {
            viewBack.sides = figureSides
        }
        for myView in myViews {
            myView.isHidden = true
        }
        viewBack.isHidden = false
    }
    
    
    @objc func viewBackTapHandler(tap: UITapGestureRecognizer) {
        let myView = tap.view as? MyView
                   
        if myView!.isViewBack {
            myView?.isViewBack = false
        } else {
            myView?.isViewBack = true
        }
    }

   
    @objc func viewBackSwipeHandler(tap: UISwipeGestureRecognizer) {
        let myView = tap.view as? MyView
      
        let coords = myView?.frame.origin
        
        myView?.transform = CGAffineTransform.identity.translatedBy(x: myView?.frame.size.width ?? 0, y: myView?.frame.size.height ?? 0)
            .rotated(by: CGFloat.pi)
        
        myView?.frame.origin = coords ?? CGPoint(x: 0, y: 0)
    }
}

