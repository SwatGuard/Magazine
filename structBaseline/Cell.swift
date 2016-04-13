//
//  Cell.swift
//  structBaseline
//
//  Created by Cosmin Stroilescu on 13/04/16.
//  Copyright © 2016 Cosmin Stroilescu. All rights reserved.
//

import UIKit

class Cell: UITableViewCell {
    
    @IBOutlet weak var logo: UIImageView!

    @IBOutlet weak var programWorkingDays: UILabel!
    
    @IBOutlet weak var programSambata: UILabel!
    
    @IBOutlet weak var programDuminica: UILabel!
    
    @IBOutlet weak var openClosed: UIImageView!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
