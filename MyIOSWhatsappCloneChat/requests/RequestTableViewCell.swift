//
//  RequestTableViewCell.swift
//  MyIOSWhatsappCloneChat
//
//  Created by pc on 19/08/2019.
//  Copyright © 2019 yonsProject. All rights reserved.
//

import UIKit

class RequestTableViewCell: UITableViewCell {
    //properties:
    
    //outlets:
    @IBOutlet weak var contactName: UILabel!
    @IBOutlet weak var contactStatus: UILabel!
    @IBOutlet weak var contactProfileImg: UIImageView!
    @IBOutlet weak var acceptBtn: UIButton!
    @IBOutlet weak var rejectBtn: UIButton!
    
    override func awakeFromNib() {
        contactProfileImg.layer.cornerRadius = contactProfileImg.frame.height / 2
    }
   
}
