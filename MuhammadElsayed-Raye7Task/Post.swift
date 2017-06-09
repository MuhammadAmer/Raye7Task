//
//  Post.swift
//  MuhammadElsayed-Raye7Task
//
//  Created by MuhammadElsayed on 6/7/17.
//  Copyright © 2017 Production Code. All rights reserved.
//

import Foundation

class Post {

    private var _userId : Int = 0
    private var _id : Int = 0
    private var _title :String = ""
    private var _body : String = ""
    
    init(user_id : Int , postId : Int , post_title : String , post_body : String) {
        self._userId = user_id
        self._id = postId
        self._title = post_title
        self._body = post_body
    }
    
    var id : Int {
        get{
            return _id
        }
    }
    
    var userId : Int {
        get{
            return _userId
        }
          }


    var title : String {
        get{
            return _title
        }
      
    }
    
    
    var body : String {
        get{
            return _body
        }
    
    }
    
    

}
