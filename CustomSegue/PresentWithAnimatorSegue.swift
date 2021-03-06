//
//  PresentWithAnimatorSegue.swift
//  CustomSegue
//
//  Created by phimage on 22/07/16.
//  Copyright © 2016 phimage. All rights reserved.
//

import AppKit

// A segue with custom animator.
// You can configure the animator in `prepareForSegue`
public class PresentWithAnimatorSegue: NSStoryboardSegue {
    
    // An animator used to present the view controller. (by default an TransitionAnimator)
    public var animator: NSViewControllerPresentationAnimator = TransitionAnimator()
    
    override public func perform() {
        self.sourceController.presentViewController(self.destinationController as! NSViewController, animator: animator)
    }

}

// MARK: Utility class with transition type configured

// Slide down segue
public class SlideDownSegue: PresentWithAnimatorSegue {
    
    override init(identifier: String, source sourceController: AnyObject, destination destinationController: AnyObject) {
        super.init(identifier: identifier, source: sourceController, destination: destinationController)
        (animator as? TransitionAnimator)?.transition = [.SlideDown, .Crossfade]
    }
    
}

// Slide up segue
public class SlideUpSegue: PresentWithAnimatorSegue {
    
    override init(identifier: String, source sourceController: AnyObject, destination destinationController: AnyObject) {
        super.init(identifier: identifier, source: sourceController, destination: destinationController)
        (animator as? TransitionAnimator)?.transition = [.SlideUp, .Crossfade]
    }
    
}

// Slide left segue
public class SlideLeftSegue: PresentWithAnimatorSegue {
    
    override init(identifier: String, source sourceController: AnyObject, destination destinationController: AnyObject) {
        super.init(identifier: identifier, source: sourceController, destination: destinationController)
        (animator as? TransitionAnimator)?.transition = [.SlideLeft, .Crossfade]
    }
    
}

// Slide right segue
public class SlideRightSegue: PresentWithAnimatorSegue {
    
    override init(identifier: String, source sourceController: AnyObject, destination destinationController: AnyObject) {
        super.init(identifier: identifier, source: sourceController, destination: destinationController)
        (animator as? TransitionAnimator)?.transition = [.SlideRight, .Crossfade]
    }
    
}

// Crossfade segue
public class CrossfadeSegue: PresentWithAnimatorSegue {
    
    override init(identifier: String, source sourceController: AnyObject, destination destinationController: AnyObject) {
        super.init(identifier: identifier, source: sourceController, destination: destinationController)
        (animator as? TransitionAnimator)?.transition = .Crossfade
    }
    
}