//
//  Post.swift
//  my-hood-thegreatest
//
//  Created by David Clare on 2/27/16.
//  Copyright © 2016 David Clare. All rights reserved.
//

import Foundation

class Post: NSObject, NSCoding {
    
    private var _imagePath: String!
    private var _title: String!
    private var _postDesc: String!
    
    
    var imagePath: String{
        return _imagePath
    }
    
    var title: String{
        return _title
    }
    var postDesc: String{
        return _postDesc
    }
    
    
    init(imagePath: String, title: String, descrip: String)
    {
        self._imagePath = imagePath
        self._title = title
        self._postDesc = descrip
    }
    
    override init()
    {
        
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        self.init()
        self._imagePath = aDecoder.decodeObjectForKey("imagePath") as? String
        self._title = aDecoder.decodeObjectForKey("title") as? String
        self._postDesc = aDecoder.decodeObjectForKey("description") as? String
        
    }
    
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(self._imagePath, forKey: "imagePath")
        aCoder.encodeObject(self._postDesc, forKey: "description")
        aCoder.encodeObject(self.title, forKey: "title")
        
    }
    
    
    
    
    
    
}