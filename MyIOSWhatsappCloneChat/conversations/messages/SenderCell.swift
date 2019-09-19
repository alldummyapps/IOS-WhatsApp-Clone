//
//  senderCell.swift
//  MyIOSWhatsappCloneChat
//
//  Created by pc on 22/08/2019.
//  Copyright © 2019 yonsProject. All rights reserved.
//

import UIKit

class SenderCell: UITableViewCell {

    @IBOutlet weak var senderView: UIView!
    @IBOutlet weak var senderMessage: UILabel!
    
    @IBOutlet weak var senderDate: UILabel!
    
    //bubble shape view:
    override func layoutSubviews() {
        super.layoutSubviews()
        senderView.layer.cornerRadius = 20
    }
    
}
