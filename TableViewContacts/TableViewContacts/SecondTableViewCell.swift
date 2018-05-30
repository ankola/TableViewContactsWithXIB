//
//  SecondTableViewCell.swift
//  TableViewContacts
//
//  Created by agile on 4/27/18.
//  Copyright © 2018 agile. All rights reserved.
//

import UIKit


class SecondTableViewCell: UITableViewCell {
    
    
    @IBOutlet var txtFirstName : UITextField!
    @IBOutlet var txtLastName : UITextField!
    @IBOutlet var txtCity : UITextField!
    @IBOutlet var txtNumber : UITextField!
    @IBOutlet var txtAddress : UITextView!
    @IBOutlet var txtEmailId : UITextField!
    
   
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
       
    }

   
    @IBAction func Buttobclick(_ sender: UIButton) {
      

    }
    
  
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
