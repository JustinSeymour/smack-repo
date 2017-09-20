//
//  AddChannelVC.swift
//  Smack
//
//  Created by Justin Seymour on 2017/09/20.
//  Copyright © 2017 Justin Seymour. All rights reserved.
//

import UIKit

class AddChannelVC: UIViewController {

    // Outlets
    
    @IBOutlet weak var nameTxt: UITextField!
    @IBOutlet weak var channelDesc: UITextField!
    @IBOutlet weak var bgView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpView()
    }

    @IBAction func createChannelPressed(_ sender: Any) {
        guard let channelName = nameTxt.text, nameTxt.text != "" else { return }
        guard let channelDesc = channelDesc.text else { return }
        SocketService.instance.addChannel(channelName: channelName, channelDescription: channelDesc) { (success) in
            if success {
                self.dismiss(animated: true, completion: nil)
            }
        }
    }
    
    @IBAction func closedModalPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    func setUpView() {
        let closeTouch = UITapGestureRecognizer(target: self, action: #selector(AddChannelVC.closeTap(_:)))
        bgView.addGestureRecognizer(closeTouch)
        
        nameTxt.attributedPlaceholder = NSAttributedString(string: "name", attributes: [NSAttributedStringKey.foregroundColor : smackPurplePlaceHolder])
        channelDesc.attributedPlaceholder = NSAttributedString(string: "description", attributes: [NSAttributedStringKey.foregroundColor : smackPurplePlaceHolder])
    }
    
    @objc func closeTap(_ recognizer: UITapGestureRecognizer) {
        dismiss(animated: true, completion: nil)
    }
    
}
