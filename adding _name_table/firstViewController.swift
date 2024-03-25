//
//  firstViewController.swift
//  adding _name_table
//
//  Created by Karthiga on 12/1/23.
//

import UIKit

protocol demo:AnyObject
{
    func datas(data:String)
}

class firstViewController: UIViewController {
    @IBOutlet weak var field: UITextField!
    @IBOutlet var doneaction: UIView!
    
    
    var AA:demo?
   
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    

    @IBAction func doneaction(_ sender: Any) {
        
        AA?.datas(data: field.text!)
        self.dismiss(animated: true)
        
        
        
    }
    
}
