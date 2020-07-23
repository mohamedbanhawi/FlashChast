//
//  MessageCell.swift
//  Flash Chat iOS13
//
//  Created by Mohamed Elbanhawi on 20/7/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class MessageCell: UITableViewCell {

    @IBOutlet weak var messageBubble: UIView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var leftImageView: UIImageView!
    
    override func awakeFromNib() { // similar to view did load for a view controller
        super.awakeFromNib()
        messageBubble.layer.cornerRadius = messageBubble.frame.size.height/5.0
        // Initialization code from design file
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
