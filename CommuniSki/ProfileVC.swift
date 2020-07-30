//
//  ProfileVC.swift
//  CommuniSki
//
//  Created by macexpert on 25/07/20.
//  Copyright © 2020 mac. All rights reserved.
//

import UIKit
import KYDrawerController
import DropDown
class ProfileVC: UIViewController,UIScrollViewDelegate
 {
    
    @IBOutlet weak var upper_View: UIView!
    let dropdown = DropDown()

    @IBOutlet weak var refferal_CodeView: UIView!
    @IBOutlet weak var chnge_PsswrdView: UIView!
    @IBOutlet weak var permission_PopView: UIView!
    @IBOutlet weak var tbl_View: UITableView!
    @IBOutlet weak var iamskier_Tapped: UIButton!
    @IBOutlet weak var imsnowbrdr_Tapped: UIButton!
    @IBOutlet weak var snowborder_Height: NSLayoutConstraint!
    @IBOutlet weak var skier_Height: NSLayoutConstraint!
    @IBOutlet weak var b_ScrollView: UIScrollView!
    @IBOutlet weak var skier_View: UIView!
    @IBOutlet weak var snowboard_View: UIView!
 
    
    override func viewWillAppear(_ animated: Bool) {
//        skier_View.isHidden = true
//        snowboard_View.isHidden = true
//        self.skier_Height.constant = 0.0
//        self.snowborder_Height.constant = 0.0
   //     b_ScrollView.updateContentView()
        
        self.chnge_PsswrdView.isHidden = true

        self.refferal_CodeView.isHidden = true
        
        self.dropdown.anchorView = upper_View
         self.dropdown.dataSource = ["Permissions", "Referral code"]
         self.dropdown.width = self.view.frame.width
         self.dropdown.backgroundColor = UIColor.white
         self.dropdown.textColor = UIColor.black
         self.dropdown.textFont = UIFont.boldSystemFont(ofSize: 18.0)
         
        self.dropdown.selectionAction = {
             [unowned self] (Index: Int, item: String) in
             if Index == 0 {
                let vc = self.storyboard?.instantiateViewController(withIdentifier: "PermissionVC") as! PermissionVC
                               strCheckView = "FromSideMenu"
                             myKyDrawerController.show(vc, sender: self)
             }
             else if Index == 1{
                self.refferal_CodeView.isHidden = false
                
             }
         }
    }
    
    @IBAction func skier_Action(_ sender: UIButton) {
//        if skier_View.isHidden
//                   {
//                       self.skier_View.isHidden = false
//                       self.skier_Height.constant = 50.0
//                   }
//                   else
//                   {
//                       self.skier_View.isHidden = true
//                       self.skier_Height.constant = 0.0
//                   }
    }
    
    @IBAction func SnowBoarder_Action(_ sender: UIButton) {
        
//        if snowboard_View.isHidden
//                          {
//                              self.snowboard_View.isHidden = false
//                              self.snowborder_Height.constant = 50.0
//                          }
//                          else
//                          {
//                              self.snowboard_View.isHidden = true
//                              self.snowborder_Height.constant = 0.0
//                          }
        
    }
    
    @IBAction func delete_AccountTapped(_ sender: Any) {
        let alertok = UIAlertController.init(title: "Communiski", message: "Do you want to delete your account ?", preferredStyle: .alert)
        alertok.addAction(UIAlertAction.init(title: "Yes", style: .default, handler: { (okaction) in
        }))
        alertok.addAction(UIAlertAction.init(title: "No", style: .destructive, handler: { (okaction) in
        }))
        self.present(alertok, animated: true, completion: nil)
        
    }
    
    @IBAction func change_PAsswordTapped(_ sender: Any) {
        self.chnge_PsswrdView.isHidden = false

//        let alertok = UIAlertController.init(title: "Communiski", message: "Do you want to change your password ?", preferredStyle: .alert)
//        alertok.addAction(UIAlertAction.init(title: "Yes", style: .default, handler: { (okaction) in
//
//        }))
//        alertok.addAction(UIAlertAction.init(title: "No", style: .destructive, handler: { (okaction) in
//
//        }))
//        self.present(alertok, animated: true, completion: nil)
        
    }
    
    @IBAction func back_Tapped(_ sender: Any) {
        myKyDrawerController.dismiss(animated: true, completion: nil)
        myKyDrawerController.setDrawerState(.closed, animated: true)

    }
    
    @IBAction func Submit_Tapped(_ sender: Any) {
        let alertok = UIAlertController.init(title: "Communiski", message: "Password Changed Successfully.", preferredStyle: .alert)
           alertok.addAction(UIAlertAction.init(title: "ok", style: .default, handler: { (okaction) in
           }))
           self.present(alertok, animated: true, completion: nil)
         
    }
    
    @IBAction func cancel_PswrdsTapped(_ sender: Any) {
        self.chnge_PsswrdView.isHidden = true
    }
    
    
    @IBAction func refferal_CodeOkTapped(_ sender: Any) {
        self.refferal_CodeView.isHidden = true
    }
    
    @IBAction func Permission_Tapped(_ sender: Any) {
        dropdown.show()
    }
    
    
    @IBAction func permission_Tapped(_ sender: Any) {
      
    }
    
}

extension ProfileVC :UITableViewDataSource,UITableViewDelegate {
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        return 10
    }
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let cell = tbl_View.dequeueReusableCell(withIdentifier: "SearchCell") as? SearchCell

        cell?.selectionStyle = .none
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

    }
   
}

class SearchCell: UITableViewCell {
    
    

}

extension UIScrollView
{
    func updateContentView() {
        contentSize.height = subviews.sorted(by: { $0.frame.maxY < $1.frame.maxY }).last?.frame.maxY ?? contentSize.height
    }
}
