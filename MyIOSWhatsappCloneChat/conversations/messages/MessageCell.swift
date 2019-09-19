//
//  MessageCell.swift
//  MyIOSWhatsappCloneChat
//
//  Created by pc on 22/08/2019.
//  Copyright © 2019 yonsProject. All rights reserved.
//

import UIKit

class MessageCell: UITableViewCell {

 
    @IBOutlet weak var receiverView: UIView!
    
    @IBOutlet weak var message: UILabel!
    
    
    
    @IBOutlet weak var date: UILabel!
    
 
    

    //bubble shape view:
    override func layoutSubviews() {
        super.layoutSubviews()
        receiverView.layer.cornerRadius = 20
    }
    
    
}
