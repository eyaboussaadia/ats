//
//  ListProductController.swift
//  AtsTest
//
//  Created by Eya MacBook Pro on 28/11/2017.
//  Copyright © 2017 ESPRIT. All rights reserved.
//

import Foundation
import UIKit
import Alamofire

class ListProductController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
 var tab : [Product] = [Product] ()

 @IBOutlet weak var tabP: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getAllProducts()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return tab.count
        
        
    }
    override func viewWillAppear(_ animated: Bool) {
        
        //snipper.stopAnimating()
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:UITableViewCell = tabP.dequeueReusableCell(withIdentifier: "myCell")!
        let ProName : UILabel =  cell.viewWithTag(101) as! UILabel
        let ProCategory : UILabel =  cell.viewWithTag(102) as! UILabel
        let ProPrice : UILabel =  cell.viewWithTag(103) as! UILabel
        let imageProduct : UIImageView = cell.viewWithTag(104) as! UIImageView
        
        imageProduct.layer.cornerRadius = imageProduct.frame.width/2
        imageProduct.layer.masksToBounds = true
        imageProduct.backgroundColor = UIColor.blue

        
        
        ProName.text =  "PRODUCT NAME : "+tab [indexPath.row].productName
        ProCategory.text =  "PRODUCT CATEGORY : "+tab [indexPath.row].category
        ProPrice.text =  "PRODUCT PRICE : "+tab [indexPath.row].basePrice+" DT"

        
        

        
       //self.productName = tab [indexPath.row].productName
        
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return "Products"
        
    }
    
    func getAllProducts()   {
        // Do any additional setup after loading the view, typically from a nib.
        
        Alamofire.request("http://internal.ats-digital.com:3066/api/products", method: .get ).responseJSON { response in
            switch response.result {
            case .success:
                print("Validation Successful")
                if let json = response.result.value{
                    print(json)
                    let jsonResult:NSArray = json  as! NSArray
                    //  let data : NSArray = (jsonResult as! NSArray).mutableCopy() as! NSMutableAr
                    
                    
                    for l in jsonResult {
                        
                        
                        
                        let ev  : Product = Product(dic: l as! [String:Any])
                        
                        
                        
                        
                        self.tab.append(ev)
                    }
                    
                    
                    print("In Function getAll Products "+String(self.tab.count))
                    self.tabP.reloadData()
                }
                
            case .failure(let error):
                print(error)
                
            }
            
            
        }
        
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let svc:DetailsProductController = segue.destination as! DetailsProductController
        
        let index:IndexPath = tabP.indexPathForSelectedRow!
        
        
        svc.DetailproductName =   tab [index.row].productName
        svc.DetailbasePrice =   tab [index.row].basePrice
        svc.Detailbrand =   tab [index.row].brand
        svc.DetailproductMaterial =   tab [index.row].productMaterial
        svc.DetailimageUrl =   tab [index.row].imageUrl
        svc.Detaildelivery =   tab [index.row].delivery
        svc.Detaildetails =   tab [index.row].details
       // svc.Detailreviews =   tab [index.row].reviews

        
        
    }

    
    
}



