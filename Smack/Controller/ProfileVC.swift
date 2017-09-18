//
//  ProfileVC.swift
//  Smack
//
//  Created by Justin Seymour on 2017/09/18.
//  Copyright © 2017 Justin Seymour. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController {

    // Outlets
    
    @IBOutlet weak var profileImg: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var eserEmail: UILabel!
    
    @IBOutlet weak var bgView: UIView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        userProfileLoad()
    }
    
    func userProfileLoad () {
        userName.text = UserDataService.instance.name
        eserEmail.text = UserDataService.instance.email
        profileImg.image = UIImage(named: UserDataService.instance.avatarName)
        profileImg.backgroundColor = UserDataService.instance.returnUIColor(components: UserDataService.instance.avatarColor)
        
        let closeTouch = UITapGestureRecognizer(target: self, action: #selector(ProfileVC.closeTap(_:)))
        bgView.addGestureRecognizer(closeTouch)
    }
    
    @objc func closeTap(_ recognizer: UITapGestureRecognizer) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func logoutBtnPressed(_ sender: Any) {
        UserDataService.instance.logoutUser()
        NotificationCenter.default.post(name: NOTIF_USER_DATA_DID_CHANGE, object: nil)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func closedModalPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
}
