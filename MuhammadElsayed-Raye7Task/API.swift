//
//  API.swift
//  MuhammadElsayed-Raye7Task
//
//  Created by MuhammadElsayed on 6/7/17.
//  Copyright © 2017 Production Code. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class API: NSObject {
    
    class func getPosts(completion : @escaping ( _ error: Error? , _ posts: [Post]?) -> Void) {
        
    let URL = "https://jsonplaceholder.typicode.com/posts"
        
        Alamofire.request(URL, method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil )
            .responseJSON{ response in
                switch response.result
                {
                case .success(let value):
                    print(value)
                    let json = JSON(value)
     
                    var posts = [Post]()
                    
                    for item in json  {
                        let userId = item.1["userId"].stringValue
                        let id = item.1["id"].stringValue
                        let title = item.1["title"].stringValue
                        let body = item.1["body"].stringValue
                        let post = Post(user_id: Int(userId)!,
                                        postId: Int(id)!,
                                        post_title: title,
                                        post_body: body)
                        posts.append(post)
                    }
                    
                    completion(nil, posts)
                    
                case .failure(let error):
                    completion(error, nil)
                    print(error)
                }
                
        }
}
}
