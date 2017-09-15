//
//  CircleImage.swift
//  Smack
//
//  Created by Justin Seymour on 2017/09/15.
//  Copyright © 2017 Justin Seymour. All rights reserved.
//

import UIKit

@IBDesignable

class CircleImage: UIImageView {

    override func awakeFromNib() {
        setUpview()
    }

    func setUpview () {
        self.layer.cornerRadius = self.frame.width  / 2
        self.clipsToBounds = true
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setUpview()
    }
}
