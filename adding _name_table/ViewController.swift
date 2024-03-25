//
//  ViewController.swift
//  adding _name_table
//
//  Created by Karthiga on 12/1/23.
//

import UIKit

class ViewController: UIViewController,demo {
    func datas(data: String) {
        label1.text = data
        
        C = label1.text
    }
    
    
    var C:String?
    
    

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var addbtn: UIButton!
    @IBOutlet weak var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    var name = ["kuhaan","velan","senthil","karthi","murugan"]

    @IBAction func addaction(_ sender: Any) {
        self.performSegue(withIdentifier: "one", sender: nil)
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let pass = segue.destination as! firstViewController
        pass.AA = self
        
        func datas(data  A: String) {
        label1.text = A
            
            C = label1.text
        }
    }
    
}
extension ViewController:UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return name.count 
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell = tableView.dequeueReusableCell(withIdentifier: "one", for: indexPath)
        cell.textLabel?.text = name[indexPath.row]
        
        return cell
    }
    
    
}
