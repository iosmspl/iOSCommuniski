//
//  ProfileViewVC.swift
//  CommuniSki
//
//  Created by mac on 29/07/2020.
//  Copyright © 2020 mac. All rights reserved.
//

import UIKit

class ProfileViewVC: UIViewController,UITableViewDataSource,UITableViewDelegate {
   
    

    @IBOutlet weak var tbl_View: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

 
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return 10
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tbl_View.dequeueReusableCell(withIdentifier: "profileTVC") as! profileTVC
                   cell.selectionStyle = .none

                   return cell
           
       }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    @IBAction func back_Tapped(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    

}
class profileTVC : UITableViewCell {
    
    
}
