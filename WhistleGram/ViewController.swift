//
//  ViewController.swift
//  WhistleGram
//
//  Created by Mitchell Cain on 11/5/18.
//  Copyright © 2018 Mitchell Cain. All rights reserved.
//

import UIKit
var postTable: postCell!


class ViewController: UITableViewController {
    
    var pictures = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "WhistleGram"
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            if item.hasPrefix("nssl") {
                pictures.append(item)
            }
        }
        
        
        
        
        
        


        // Do any additional setup after loading the view.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> postCell {
        let cell = postTable
        postTable.postImage.image = UIImage(named: "postImageCoolCat1.jpg")
        postTable.username.text = "Test"
        postTable.profileImageView.image = UIImage(named: "postImageKitten1.jpg")
        return cell!
    }
    
    
    
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
