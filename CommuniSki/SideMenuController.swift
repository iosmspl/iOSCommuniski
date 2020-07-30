//
//  SideMenuController.swift
//  ROAM
//
//  Created by Sunny Singh on 05/06/19.
//  Copyright © 2019 ROAM_APP. All rights reserved.
//

import UIKit
import KYDrawerController

class sideMenuVC: UIViewController , UITableViewDataSource, UITableViewDelegate, KYDrawerControllerDelegate
{
    let appDel = UIApplication.shared.delegate as! AppDelegate
    
    var arraySkipLoginImage = [UIImage.init(named: "Profile"),UIImage.init(named: "rate-app"),UIImage.init(named: "Share-app"),UIImage.init(named: ""),UIImage.init(named: ""),UIImage.init(named: "tutorial")]
    
    var array = ["Profile","Snowflake Rewards","Lunches","Ski Resorts Jobs","Contact Us","About Us","Privacy Policy","Terms and Conditions","Notification","Logout"]
    
    var arrayImage = [UIImage.init(named: "profile1"),UIImage.init(named: "ski_group1"),UIImage.init(named: "3"),UIImage.init(named: "3"),UIImage.init(named: "ski_group1"), UIImage.init(named: "chat"), UIImage.init(named: "privacy"), UIImage.init(named: "ski_group1"), UIImage.init(named: "notification-1"), UIImage.init(named: "logout")]
    
    @IBOutlet var tblvw: UITableView!
    @IBOutlet var profilePic: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return array.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        let height = CGFloat(60)
        return height
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tblvw.dequeueReusableCell(withIdentifier: "cell") as! sidetblvw
        cell.lbl.text = array[indexPath.row]
        cell.imgvw.image = arrayImage[indexPath.row]
        cell.selectionStyle = .none
        return cell
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        if (indexPath.row == 0)
        {
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "ProfileVC") as! ProfileVC
            strCheckView = "FromSideMenu"
            myKyDrawerController.show(vc, sender: self)
        }
        else if(indexPath.row == 1)
        {
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "SnowFlakesRewardVC") as! SnowFlakesRewardVC
            strCheckView = "FromSideMenu"
            myKyDrawerController.show(vc, sender: self)
            
        }
        else if(indexPath.row == 2)
        {
            
            
        }
        else if(indexPath.row == 3)
        {
            
            
        } else if (indexPath.row == 4){
            
            
        } else if (indexPath.row == 5){
            
            
        } else if (indexPath.row == 6){
            
        }else if (indexPath.row == 7){
            
        }else if (indexPath.row == 8){
            
        }else if (indexPath.row == 9){
            
        }
    }
}
class sidetblvw:UITableViewCell
{
    @IBOutlet var imgvw: UIImageView!
    @IBOutlet weak var lbl: UILabel!
}
