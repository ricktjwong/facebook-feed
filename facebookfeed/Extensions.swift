//
//  Extensions.swift
//  facebookfeed
//
//  Created by Rick Wong on 01/07/2019.
//  Copyright © 2019 Rick Wong. All rights reserved.
//

import UIKit

extension UIView {
    func addConstraintsWithFormat(format: String, views: UIView...) {
        
        var viewDictionary = [String: UIView]()
        
        for (index, view) in views.enumerated() {
            let key = "v\(index)"
            viewDictionary[key] = view
            view.translatesAutoresizingMaskIntoConstraints = false
        }
        
        self.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: format,
                                                           options: NSLayoutConstraint.FormatOptions(),
                                                           metrics: nil,
                                                           views: viewDictionary))
        
    }
}

extension UIColor {
    
    static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
    }
    
}
