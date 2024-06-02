//
//  HalfEmbedingSegue.swift
//  StoryboardSegueTestApp
//
//  Created by racoon on 6/2/24.
//

import UIKit

class HalfEmbedingSegue: UIStoryboardSegue {
    override func perform() {
        var frame = source.view.bounds
        frame.origin.y = frame.height
        frame.size.height = frame.height / 2
        
        source.view.addSubview(destination.view)
        
        destination.view.frame = frame
        destination.view.alpha = 0.0
        destination.view.layer.cornerRadius = 10
        
        source.addChild(destination)
        
        frame.origin.y = source.view.bounds.height / 2
        
        UIView.animate(withDuration: 0.3) {
            self.destination.view.frame = frame
            self.destination.view.alpha = 1.0
        }
    }
}
