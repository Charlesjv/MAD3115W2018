//
//  LoginVC.swift
//  day3
//
//  Created by MacStudent on 2018-02-22.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    
    @IBAction func btnRegistration(_ sender: UIBarButtonItem) {
        
        let regsb:UIStoryboard = UIStoryboard(name:"main",bundle:nil)
        
        let regvc = regsb.instantiateViewController(withIdentifier: "RegistrationScreen")
        navigationController?.pushViewController(regvc, animated: true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
