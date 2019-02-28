//
//  postCell.swift
//  WhistleGram
//
//  Created by Mitchell Cain on 1/12/19.
//  Copyright © 2019 Mitchell Cain. All rights reserved.
//

import UIKit


class postCell: UITableViewCell {

    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var username: UILabel!
    @IBOutlet weak var postImage: UIImageView!
    @IBOutlet weak var likePost: UIImageView!
    @IBOutlet weak var commentEmpty: UIImageView!
    @IBOutlet weak var sendEmpty: UIImageView!
    @IBOutlet weak var likes: UILabel!
    
    var usernameDirectory = [String]()
    var postImageDirectory = [String]()
    
    var homeVC: ViewController?
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        username.text = "Mike"
        postImage.image = UIImage(named: "coolCat1")
        profileImageView.image = UIImage(named: "kitten1")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
