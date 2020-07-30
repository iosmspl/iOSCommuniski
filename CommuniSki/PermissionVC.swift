//
//  PermissionVC.swift
//  CommuniSki
//
//  Created by mac on 27/07/2020.
//  Copyright © 2020 mac. All rights reserved.
//

import UIKit
import KYDrawerController

class PermissionVC: UIViewController,UITableViewDelegate,UITableViewDataSource {
   
    
    @IBOutlet weak var tbl_View: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    @IBAction func back_Tapped(_ sender: Any) {
        myKyDrawerController.dismiss(animated: true, completion: nil)
        myKyDrawerController.setDrawerState(.closed, animated: true)
    }

    //Mark : -  Tableview Delegates : -

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return 10
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
        let cell = tbl_View.dequeueReusableCell(withIdentifier: "PermissionTVC") as? PermissionTVC

        
        return cell ?? UITableViewCell()
       }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
}

class PermissionTVC : UITableViewCell{
    
    
}
