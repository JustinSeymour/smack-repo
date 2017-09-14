//
//  CreateAccountVC.swift
//  Smack
//
//  Created by Justin Seymour on 2017/09/14.
//  Copyright © 2017 Justin Seymour. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func closePressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
}
