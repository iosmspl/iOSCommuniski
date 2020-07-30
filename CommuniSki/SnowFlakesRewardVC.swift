//
//  SnowFlakesRewardVC.swift
//  CommuniSki
//
//  Created by mac on 30/07/2020.
//  Copyright © 2020 mac. All rights reserved.
//

import UIKit

class SnowFlakesRewardVC: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    @IBOutlet weak var sgment_Tapped: UISegmentedControl!
    @IBOutlet weak var tbl_View: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    // MARK : - Tableview Delegates : -
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tbl_View.dequeueReusableCell(withIdentifier: "SnowTVC") as? SnowTVC
        cell?.selectionStyle = .none
        
        return cell ?? UITableViewCell()
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    @IBAction func segment_Atcion(_ sender: Any) {
        
        
        
    }
    
    @IBAction func back_Tapped(_ sender: Any) {
        myKyDrawerController.dismiss(animated: true, completion: nil)
        myKyDrawerController.setDrawerState(.closed, animated: true)
    }
}
class SnowTVC : UITableViewCell{
    
}
