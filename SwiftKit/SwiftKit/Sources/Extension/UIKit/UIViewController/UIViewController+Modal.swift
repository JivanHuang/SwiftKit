//
//  UIViewController+Modal.swift
//  SwiftKit
//
//  Created by Jivan on 2022/5/17.
//

import UIKit

public extension UIViewController {
    var isVisible: Bool {
        isViewLoaded && view.window != nil
    }

    var isModal: Bool {
        presentingViewController?.presentedViewController == self ||
            navigationController?.presentingViewController?.presentedViewController == navigationController ||
            tabBarController?.presentingViewController is UITabBarController
    }
}
