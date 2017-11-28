//
//  DetailsProductController.swift
//  AtsTest
//
//  Created by Eya MacBook Pro on 28/11/2017.
//  Copyright © 2017 ESPRIT. All rights reserved.
//

import Foundation
import UIKit
class DetailsProductController: UIViewController {
 
////////////VAR/////////////////////////////////
    var DetailproductName:String = ""
    var DetailbasePrice:String = ""
    var Detailbrand:String = ""
    var DetailproductMaterial:String = ""
    var DetailimageUrl:String = ""
    var Detaildelivery:String = ""
    var Detaildetails:String = ""
    var Detailreviews:String = ""
    
//////////////LABEL////////////////////////////
    @IBOutlet weak var LabelProductBland: UILabel!
    @IBOutlet weak var LabelProductName: UILabel!
    @IBOutlet weak var LabelProductPrice: UILabel!
    @IBOutlet weak var LabelProductViews: UILabel!
    @IBOutlet weak var LabelProductDetails: UILabel!
    @IBOutlet weak var LabelProductDelivery: UILabel!
    @IBOutlet weak var LabelProductUrl: UILabel!
    @IBOutlet weak var labelProductMaterial: UILabel!
    
    


override func viewDidLoad() {
    super.viewDidLoad()
    
    //////////////LABELsetText////////////////////////////

    LabelProductName.text = "PRODUCT NAME : "+DetailproductName
    LabelProductPrice.text = "PRODUCT PRICE : "+DetailbasePrice
    LabelProductBland.text = "BRAND : "+Detailbrand
    labelProductMaterial.text = "PRODUCT MATERIAL"+DetailproductMaterial
    LabelProductDelivery.text = "DELEVIRY "+Detaildelivery
    LabelProductViews.text = "REVIEWS : "+Detailreviews

    

    
 
}

override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
}

}
