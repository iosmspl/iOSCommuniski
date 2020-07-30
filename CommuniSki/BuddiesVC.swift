//
//  BuddiesVC.swift
//  CommuniSki
//
//  Created by mac on 28/07/2020.
//  Copyright © 2020 mac. All rights reserved.
//

import UIKit
import DropDown

class BuddiesVC: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
 let dropdown = DropDown()

    @IBOutlet weak var upper_View: UIView!
    // TableView Outlet
    @IBOutlet var tblView_Buddies: UITableView!
    
    @IBOutlet var segmentController: UISegmentedControl!
    @IBOutlet weak var search_TF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      tblView_Buddies.tableFooterView = UIView()
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
//            self.dropdown.anchorView = upper_View
             self.dropdown.dataSource = ["View Profile", "Send Message","Remove Buddy"]
             self.dropdown.width = self.view.frame.width
             self.dropdown.backgroundColor = UIColor.white
             self.dropdown.textColor = UIColor.black
             self.dropdown.textFont = UIFont.boldSystemFont(ofSize: 18.0)
             
            self.dropdown.selectionAction = {
                 [unowned self] (Index: Int, item: String) in
                 if Index == 0 {
                    let vc = self.storyboard?.instantiateViewController(withIdentifier: "ProfileViewVC") as!        ProfileViewVC
                  myKyDrawerController.show(vc, sender: self)
                 }
                 else if Index == 1{

                    
                 }
             }
            
    }
    @IBAction func segment_Action(_ sender: UISegmentedControl) {
        self.tblView_Buddies.reloadData()
    }
    
    @IBAction func topSearhClose_Action(_ sender: UIButton) {
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        if segmentController.selectedSegmentIndex == 0{
            let cell = tblView_Buddies.dequeueReusableCell(withIdentifier: "cell") as? BuddiesCell
            cell?.btn_Viewprofile.tag = indexPath.row
            cell?.btn_Viewprofile.addTarget(self, action: #selector(actionTrackOrder(sender:)), for: .touchUpInside)
            cell?.selectionStyle = .none

            return cell!
        }
        else if segmentController.selectedSegmentIndex ==  1{
            let  cell = tblView_Buddies.dequeueReusableCell(withIdentifier: "PendingCell") as? PendingCell
            cell?.selectionStyle = .none

            return cell!

        }
        else if segmentController.selectedSegmentIndex ==  2 {
            let cell = tblView_Buddies.dequeueReusableCell(withIdentifier: "OutgoingCell") as? OutgoingCell
            cell?.selectionStyle = .none
            return cell!
        }
 
        
        return  UITableViewCell()
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    //        searchApi(str: arraySearchKeywords[indexPath.row].name)
    //        searchBar.resignFirstResponder()
    //        tableView.isHidden = true
    //        searchBar.text = arraySearchKeywords[indexPath.row].name
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ProfileViewVC") as!        ProfileViewVC
        self.navigationController?.pushViewController(vc, animated: true)
    }

    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
       // constraintHeightTableView.constant = tableView.contentSize.height
    }
    

    @IBAction func side_MenuTapped(_ sender: Any) {
        myKyDrawerController.setDrawerState(.opened, animated: true)
        print("its working")
    }
    
    @IBAction func search_CrossTapped(_ sender: Any) {
        search_TF.text = ""
    }
    
    //Mark : - Cell action View Profile : -
    
    @objc func actionTrackOrder(sender: UIButton)
    {
    
        
        
    }
    
    
}

class BuddiesCell: UITableViewCell {
@IBOutlet weak var btn_Viewprofile: UIButton!
    @IBOutlet weak var upper_View: UIView!
    
}
class PendingCell: UITableViewCell {
    
}
class OutgoingCell: UITableViewCell {
    
}

