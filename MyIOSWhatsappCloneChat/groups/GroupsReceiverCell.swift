//
//  GroupsReceiverCell.swift
//  MyIOSWhatsappCloneChat
//
//  Created by pc on 25/08/2019.
//  Copyright © 2019 yonsProject. All rights reserved.
//

import UIKit

class GroupsReceiverCell: UITableViewCell {

    @IBOutlet weak var receiverView: UIView!
    
    @IBOutlet weak var receiverMessage: UILabel!
    
    @IBOutlet weak var receiverDate: UILabel!
    @IBOutlet weak var receiverName: UILabel!
    
    
    //bubble shape view:
    override func layoutSubviews() {
        super.layoutSubviews()
        receiverView.layer.cornerRadius = 20
    }
}
