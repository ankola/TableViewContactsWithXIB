//
//  ViewController.swift
//  TableViewContacts
//
//  Created by agile on 4/26/18.
//  Copyright © 2018 agile. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var objTableview: UITableView!
    
    var arrData : Array = [["First Name" : "Savan","Last Name" : "Ankola","Number" : "9574729299", "City" : "Ksd", "Email" : "amkolasavan@gmail.com", "Address" : "dfdsfdsfds"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        objTableview.register(UINib.init(nibName: "FirstTableViewCell", bundle: nil), forCellReuseIdentifier: "FirstTableViewCell")
    }
    
    // Alert
    @IBAction func btnAdd(_ sender: UIBarButtonItem) {
        
        let alert = UIAlertController(title: "Add Contacts", message: nil, preferredStyle: .alert)
        
        alert.addTextField { (textfield) in
            textfield.placeholder = "Enater Your First Name"
            }
        alert.addTextField { (textfield) in
                textfield.placeholder = "Enater Your Number"
            }
            
            let Save = UIAlertAction(title: "Save", style: .default, handler: { (action) in
                self.arrData.append(["First Name" : (alert.textFields?[0].text)!, "Number" : (alert.textFields?[1].text)!])
                self.objTableview.reloadData()
            })
            alert.addAction(Save)
        
        let cancel = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
        }
            alert.addAction(cancel)
        
        present(alert, animated: true, completion: nil)
    }
}

//    func generateData(){
//        let aryAPIUserList:[[String:Any]] =
//              
//            
//    print(aryAPIUserList)
//    for user in aryAPIUserList {
//        let objUser:AIUser = AIUser.init(withDetails: user)
//        self.aryUserList.append(objUser)
//    }
//    
//    tblUserList.setupTableView(withUserList: self.aryUserList)
//    tblUserList.setDidSelectHandler { (user) in
//        print(user.city)
//    }
//    
//}

extension ViewController : UITableViewDelegate, UITableViewDataSource{
    //MARK: - TableView Methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
            
        let cell : FirstTableViewCell = tableView.dequeueReusableCell(withIdentifier: "FirstTableViewCell") as! FirstTableViewCell
        
        cell.lblFirstName.text =  arrData[indexPath.row]["First Name"]
        cell.lblNumber.text = arrData[indexPath.row]["Number"]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let objstory : SecondViewController = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        objstory.passDict = arrData[indexPath.row]
        
        self.navigationController?.pushViewController(objstory, animated: true)
    }
}

