//
//  ConversationsTableViewCell.swift
//  MyIOSWhatsappCloneChat
//
//  Created by pc on 20/08/2019.
//  Copyright © 2019 yonsProject. All rights reserved.
//

import UIKit

class ConversationsTableViewCell: UITableViewCell {

    @IBOutlet weak var contactDate: UILabel!
    
    @IBOutlet weak var contactProfileImg: UIImageView!
    @IBOutlet weak var contactName: UILabel!
    
    @IBOutlet weak var contactStatus: UILabel!
    
    
    
    override func awakeFromNib() {
        contactProfileImg.layer.cornerRadius = contactProfileImg.frame.height / 2
    }
}
