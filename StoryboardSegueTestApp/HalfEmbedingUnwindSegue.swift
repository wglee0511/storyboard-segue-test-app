//
//  HalfEmbedingUnwindSegue.swift
//  StoryboardSegueTestApp
//
//  Created by racoon on 6/2/24.
//

import UIKit

class HalfEmbedingUnwindSegue: UIStoryboardSegue {
    override func perform() {
        var frame = source.view.frame
        
        frame = frame.offsetBy(dx: 0, dy: frame.height)
        
        UIView.animate(withDuration: 0.3) {
            self.source.view.frame = frame
            self.source.view.alpha = 0.0
        } completion: { _ in
            self.source.view.removeFromSuperview()
            self.source.removeFromParent()
        }

    }
}
