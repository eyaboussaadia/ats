//
//  Product.swift
//  AtsTest
//
//  Created by Eya MacBook Pro on 28/11/2017.
//  Copyright © 2017 ESPRIT. All rights reserved.
//
import UIKit
class Product: NSObject {
    

    /////////////////////////////VAR/////////////////////////////
    var productName: String!
    var basePrice: String!
    var category: String!
    var brand: String!
    var productMaterial: String!
    var imageUrl: String!
    var delivery: String!
    var details: String!
    var reviews: String!
    
    ///////////////////////DATA///////////////////////////////////
    
    init(dic : [String:Any]) {
        
        productName = dic["productName"] as? String!
        basePrice = dic["basePrice"] as? String!
        category = dic["category"] as? String!
        brand = dic["brand"] as? String!
        productMaterial = dic["productMaterial"] as? String!
        imageUrl = dic["imageUrl"] as? String!
        delivery = dic["delivery"] as? String!
        details = dic["details"] as? String!


       
        
    }
    
}
 
