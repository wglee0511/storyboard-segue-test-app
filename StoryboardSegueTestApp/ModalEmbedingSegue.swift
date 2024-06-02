//
//  ModalEmbedingSegue.swift
//  StoryboardSegueTestApp
//
//  Created by racoon on 6/2/24.
//

import UIKit

class ModalEmbedingSegue: UIStoryboardSegue {
    override func perform() {
        guard let sourceView = source.view else {
            return
        }
        source.view.addSubview(destination.view)
        
        var frame = sourceView.bounds
        let baseHeight = frame.height / 2
        let baseWidth = frame.width * 0.8
        frame.origin.y = frame.height
        frame.origin.x = source.view.bounds.width / 2 - baseWidth / 2
        
        frame.size.width = baseWidth
        frame.size.height = baseHeight
        destination.view.frame = frame
        destination.view.alpha = 0.0
        destination.view.layer.cornerRadius = 10
        
        source.addChild(destination)
        frame.origin.y = baseHeight - baseHeight / 2
        frame.origin.x = source.view.bounds.width / 2 - baseWidth / 2
        
        UIView.animate(withDuration: 0.3) {
            self.destination.view.frame = frame
            self.destination.view.alpha = 1.0
        }
        
    }
}
