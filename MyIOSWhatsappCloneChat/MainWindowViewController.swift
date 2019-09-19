//
//  ViewController.swift
//  MyIOSWhatsappCloneChat
//
//  Created by pc on 05/08/2019.
//  Copyright © 2019 yonsProject. All rights reserved.
//

import UIKit
import FirebaseAuth
import Firebase
import FirebaseDatabase


class MainWindowViewController: UIViewController {
    
    
    //properties:
    
    
    //fire base:
    var ref:DatabaseReference!
   
    
    
    
    
    
    override func viewDidLoad() {
        
        
        checkCurrentUser()
    }
    
    
    
    @IBAction func menuBarBtn(_ sender: UIBarButtonItem) {
        
        //alert text attributes:
        let messageFont = [kCTFontAttributeName: UIFont(name: "Avenir-Roman", size: 25.0)!]
        let messageAttrString = NSMutableAttributedString(string: "User Menu", attributes: messageFont as [NSAttributedString.Key : Any])
        
        //alert init:
        let topMenuAlert = UIAlertController(title: nil , message: nil, preferredStyle: .actionSheet)
        
        //appliment attribute:
        topMenuAlert.setValue(messageAttrString, forKey: "attributedMessage")
        
        
        topMenuAlert.addAction(UIAlertAction(title: "Find Contacts", style: .default, handler: { (findContactsAction) in
            
            let findContactVC = self.storyboard?.instantiateViewController(withIdentifier: "findContactsTableView")
            self.present(findContactVC!, animated: true, completion: nil)
            
        }))
        
        //setting btn:
        topMenuAlert.addAction(UIAlertAction(title: "Settings", style: .default, handler: { (settingAction) in
            
            
            let toSettingsVC = self.storyboard?.instantiateViewController(withIdentifier: "settingsViewController")
            self.present(toSettingsVC!, animated: true, completion: nil)
        
        }))
        // about btn:
        topMenuAlert.addAction(UIAlertAction(title: "About", style: .default, handler: { (aboutAction) in
            
        }))
        //logout btn
        topMenuAlert.addAction(UIAlertAction(title: "Log Out", style: .default, handler: { (logoutAction) in
            
            self.logout()
            self.checkCurrentUser()
            
        }))
        
        //dismiss the menu
        topMenuAlert.addAction(UIAlertAction(title: "Dismiss", style: .destructive, handler: { (logoutAction) in
            
           
            
        }))
        
        
        self.present(topMenuAlert, animated: true) {
            
        }
        
        
    }
    
    

    
    
    //checks if a user is logged in -> if so continue to main VC
    //else -> send user to login VC
    func checkCurrentUser () {
        
        if(Auth.auth().currentUser  == nil){
            if let vc = self.storyboard?.instantiateViewController(withIdentifier: "authViewController") {
                self.navigationController?.present(vc, animated: true, completion: nil)
                
            }
        }
        
    }
    
    
    
    //log out the user of the app
    //if it trows an error the catch phrase will 'catch' that error
    func logout() {
        
        let fAuth =  Auth.auth()
        
        do{
            try fAuth.signOut()
        }catch let signOutError as NSError{
            
            print("error siging out " + signOutError.localizedDescription)
        }
        
        
    }
    
    
}


