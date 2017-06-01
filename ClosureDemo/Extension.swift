//
//  Extension.swift
//  ClosureDemo
//
//  Created by FARHAN IT SOLUTION on 15/04/17.
//
//

import Foundation
import UIKit

public extension UINavigationController {
    
    ///  Pop ViewController with completion handler.
    ///
    /// - Parameter completion: optional completion handler (default is nil).
    public func popViewController(completion: (()->Void)? = nil) {
        // https://github.com/cotkjaer/UserInterface/blob/master/UserInterface/UIViewController.swift
        CATransaction.begin()
        CATransaction.setCompletionBlock(completion)
        popViewController(animated: true)
        CATransaction.commit()
    }
    
    /// Push ViewController with completion handler.
    ///
    /// - Parameters:
    ///   - viewController: viewController to push.
    /// - Parameter completion: optional completion handler (default is nil).
    public func pushViewController(viewController: UIViewController, completion: (()->Void)? = nil)  {
        // https://github.com/cotkjaer/UserInterface/blob/master/UserInterface/UIViewController.swift
        
        CATransaction.begin()
        CATransaction.setCompletionBlock(completion)
        pushViewController(viewController, animated: true)
        CATransaction.commit()
    }
    
    /// Make navigation controller's navigation bar transparent.
    ///
    /// - Parameter withTint: tint color (default is .white).
    public func makeTransparent(withTint: UIColor = .white) {
        navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationBar.shadowImage = UIImage()
        navigationBar.isTranslucent = true
        navigationBar.tintColor = withTint
        navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: withTint]
    }
    
}
