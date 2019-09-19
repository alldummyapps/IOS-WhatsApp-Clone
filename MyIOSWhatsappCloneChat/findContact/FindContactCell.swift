//
//  FindContactCell.swift
//  MyIOSWhatsappCloneChat
//
//  Created by pc on 18/08/2019.
//  Copyright © 2019 yonsProject. All rights reserved.
//

import UIKit

class FindContactCell: UITableViewCell {

    
    //properties:
    
    
    //outlets:
    
    
    @IBOutlet weak var contactProfileImg: UIImageView!
    @IBOutlet weak var contactName: UILabel!
    @IBOutlet weak var contactStatus: UILabel!
    @IBOutlet weak var add: UIButton!
    
    
    override func awakeFromNib() {
        contactProfileImg.layer.cornerRadius = contactProfileImg.frame.height / 2
    }
    
}
