//
//  PostsVC.swift
//  MuhammadElsayed-Raye7Task
//
//  Created by MuhammadElsayed on 6/7/17.
//  Copyright © 2017 Production Code. All rights reserved.
//

import UIKit

class PostsVC: UIViewController , UITableViewDataSource , UITableViewDelegate{
    
    @IBOutlet weak var PostsTable: UITableView!
    
    var posts = [Post]()


    override func viewDidLoad() {
        super.viewDidLoad()
        
   
        loadPosts()
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let setIdentifier = "cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: setIdentifier, for: indexPath as IndexPath) as? PostsCell
        cell?.configureCell(post: posts[indexPath.row])
        return cell!
    }
    
    
    func loadPosts(){
    
        API.getPosts(){ (error: Error? , posts: [Post]?) in
            if let posts = posts {
                print("success" ,  posts.count)
                self.posts = posts
                self.PostsTable.dataSource = self
                self.PostsTable.delegate = self
                self.PostsTable.reloadData()
            }
            else
            {
                print("error:\(String(describing: error))")
            }
}

}
}





