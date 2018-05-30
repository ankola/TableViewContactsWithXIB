//
//  SecondViewController.swift
//  TableViewContacts
//
//  Created by agile on 4/27/18.
//  Copyright © 2018 agile. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDataSource {
    
    var passDict : Dictionary = ["First Name" : "No Record","Last Name" : "No Record","Number" : "No Record", "City" : "No Record", "Email" : "No Record", "Address" : "No Record"]

    @IBOutlet var secondVCtable : UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        secondVCtable.register(UINib.init(nibName: "SecondTableViewCell", bundle: nil), forCellReuseIdentifier: "SecondTableViewCell")
        secondVCtable.dataSource = self
    }
    
    
    @IBAction func btnSave(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : SecondTableViewCell = tableView.dequeueReusableCell(withIdentifier: "SecondTableViewCell") as! SecondTableViewCell
    
        cell.txtFirstName.placeholder = passDict["First Name"]
        cell.txtLastName.placeholder = passDict["Last Name"]
        cell.txtNumber.placeholder = passDict["Number"]
        cell.txtCity.placeholder = passDict["City"]
        cell.txtEmailId.placeholder = passDict["Email"]
        cell.txtAddress.text = passDict["Address"]
        return cell
    }
  
}
