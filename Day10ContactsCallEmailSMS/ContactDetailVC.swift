//
//  ContactDetailVC.swift
//  Day10ContactsCallEmailSMS
//
//  Created by Jigisha Patel on 2018-03-02.
//  Copyright © 2018 JK. All rights reserved.
//

import UIKit
import CallKit
import MessageUI

class ContactDetailVC: UIViewController {

    var contactNumber: String = ""
    var contactName : String = ""
    var contactEmail : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.hidesBackButton = true
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Contacts", style: .plain, target: self, action: #selector(self.goToContacts))
        self.navigationItem.title = contactName
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func btnCallAction(_ sender: UIButton) {
        print("calling...")
        let url = URL(string: "tel://+11231231231")
        
        if UIApplication.shared.canOpenURL(url!){
            if #available(iOS 10, *)
            {
                UIApplication.shared.open(url!)
            }
            else
            {
                UIApplication.shared.openURL(url!)
            }
        }
    }
    
    @IBAction func btnTextAction(_ sender: UIButton) {
        print("Messaging...")
        if MFMessageComposeViewController.canSendText() {
            
            let messageVC = MFMessageComposeViewController()
            
            messageVC.body = "Hello, How are you?"
            messageVC.recipients = ["+11231231231"]
            messageVC.messageComposeDelegate = self as? MFMessageComposeViewControllerDelegate
            
            self.present(messageVC,animated: true,completion: nil)
        }
    }
    
    // MFMailComposeViewControllerDelegate for Message
    func messageComposeViewController(_ controller: MFMessageComposeViewController, didFinishWith result: MessageComposeResult)
    {
        //for Message
        switch (result) {
        case .cancelled:
            print("Message was cancelled")
            self.dismiss(animated: true, completion: nil)
        case .failed:
            print("Message failed")
            self.dismiss(animated: true, completion: nil)
        case .sent:
            print("Message was sent")
            self.dismiss(animated: true, completion: nil)
        }
        
        //for Email
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func btnEmailAction(_ sender: UIButton) {
        print("sending email...")
        
        if MFMailComposeViewController.canSendMail() {
            
            let EmailPicker = MFMailComposeViewController()
            
            EmailPicker.mailComposeDelegate = self
            EmailPicker.setSubject("Test Email")
            EmailPicker.setMessageBody("Hello, How are you!", isHTML: true)
            
            self.present(EmailPicker ,animated: true, completion: nil)

        }
        else{
            print("can't sent email...")
        }
    }
    
    @objc func goToContacts(){
        self.navigationController?.popViewController(animated: true)
    }
}

extension ContactDetailVC: MFMailComposeViewControllerDelegate{
    func mailComposeController(controller: MFMailComposeViewController,
                               didFinishWithResult result: MFMailComposeResult, error: NSError?) {
        // Check the result or perform other tasks.
        
        // Dismiss the mail compose view controller.
        controller.dismiss(animated: true, completion: nil)
    }
}

