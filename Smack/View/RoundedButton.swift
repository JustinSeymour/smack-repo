//
//  RoundedButton.swift
//  Smack
//
//  Created by Justin Seymour on 2017/09/14.
//  Copyright © 2017 Justin Seymour. All rights reserved.
//

import UIKit

@IBDesignable

class RoundedButton: UIButton {

        @IBInspectable var cornerRadius: CGFloat = 3.0 {
            didSet {
                self.layer.cornerRadius = cornerRadius
            }
        }
        
        override func awakeFromNib() {
            super.prepareForInterfaceBuilder()
            self.setupView()
        }
        
        func setupView() {
            self.layer.cornerRadius = cornerRadius
        }
}
