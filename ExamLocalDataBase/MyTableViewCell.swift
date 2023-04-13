//
//  MyTableViewCell.swift
//  ExamLocalDataBase
//
//  Created by Sneh kalariya on 12/04/23.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var id: UILabel!
    @IBOutlet weak var name: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
