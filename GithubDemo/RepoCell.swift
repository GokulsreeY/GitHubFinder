//
//  RepoCell.swift
//  GithubDemo
//
//  Created by Gokulsree Yenugadhati on 2/16/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

class RepoCell: UITableViewCell {
    
    @IBOutlet weak var ownerLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var picView: UIImageView!
    @IBOutlet weak var forkLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!

    @IBOutlet weak var starLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
