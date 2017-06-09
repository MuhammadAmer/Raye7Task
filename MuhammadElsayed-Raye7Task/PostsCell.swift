//
//  PostsCell.swift
//  MuhammadElsayed-Raye7Task
//
//  Created by MuhammadElsayed on 6/7/17.
//  Copyright © 2017 Production Code. All rights reserved.
//

import UIKit

class PostsCell: UITableViewCell {

    @IBOutlet weak var postTitle: UILabel!
    
    @IBOutlet weak var postBody: UILabel!
    
    
    
    func configureCell( post: Post)
    {
        
        postTitle.text = post.title
        postBody.text = post.body
    
    }
}
