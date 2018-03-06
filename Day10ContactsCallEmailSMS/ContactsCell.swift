//
//  ContactsCell.swift
//  Day10ContactsCallEmailSMS
//
//  Created by Jigisha Patel on 2018-03-02.
//  Copyright © 2018 JK. All rights reserved.
//

import UIKit

class ContactsCell: UITableViewCell {
    @IBOutlet var contactTitle: UILabel!
    
    @IBOutlet var contactSubtitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
