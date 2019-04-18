//
//  MyViewAnimation.swift
//  DrawingApp
//
//  Created by Crafter on 4/17/19.
//  Copyright © 2019 Crafter. All rights reserved.
//

import UIKit

extension MyView {
    
    func cardsMatchAnimation(completion: (() -> Swift.Void)? = nil)  {
        let animator = UIViewPropertyAnimator(
            duration: Constants.matchCardAnimationDuration,
            curve: .linear ,
            animations: {
                self.center = self.superview!.center
                self.transform = CGAffineTransform.identity.scaledBy(x: Constants.matchCardAnimationScaleUp,
                                                                     y: Constants.matchCardAnimationScaleUp)
        })
        animator.addCompletion({ position in
            UIViewPropertyAnimator.runningPropertyAnimator(
                withDuration: Constants.matchCardAnimationDuration,
                delay: 0, options: [],
                animations: {
                    self.transform = CGAffineTransform.identity.scaledBy(x: Constants.matchCardAnimationScaleDown,
                                                                         y: Constants.matchCardAnimationScaleDown)
                    self.alpha = 0
            },
                completion: { position in
                    self.isHidden = true
                    self.alpha = 1
                    self.transform = .identity
            }
            )
        })
        animator.addCompletion({ position in
            completion?()
        })
        animator.startAnimation()
    }
    
}



