//
//  MessageCellTableViewCell.swift
//  Smack
//
//  Created by Justin Seymour on 2017/09/22.
//  Copyright © 2017 Justin Seymour. All rights reserved.
//

import UIKit

class MessageCell: UITableViewCell {
    
    //Outlets
    @IBOutlet weak var userImg: CircleImage!
    @IBOutlet weak var userNameLbl: UILabel!
    @IBOutlet weak var timeStampLbl: UILabel!
    @IBOutlet weak var messgaeBodyLbl: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func configureCell(message: Message) {
        messgaeBodyLbl.text = message.message
        userNameLbl.text = message.userName
        userImg.image = UIImage(named: message.userAvatar)
        userImg.backgroundColor = UserDataService.instance .returnUIColor(components: message.userAvatarColor)
    }

}
