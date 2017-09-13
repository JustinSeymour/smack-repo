//
//  ChannelVC.swift
//  Smack
//
//  Created by Justin Seymour on 2017/09/13.
//  Copyright © 2017 Justin Seymour. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
    }

}
