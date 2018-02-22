//
//  RegisterVC.swift
//  day3
//
//  Created by MacStudent on 2018-02-22.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class RegisterVC: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {

    var citylist:[String] = ["bc","cupertino"]
    
    var selectedCityIndex:Int = 0
    
    @IBOutlet weak var txtEmail: UITextField!
    
    
    
    @IBOutlet weak var txtpassword: UITextField!
    
    @IBOutlet weak var txtPostalCode: UITextField!
   
    
    @IBOutlet weak var datepicker: UIDatePicker!
    
    @IBOutlet weak var txtcontactnumber: UITextField!
    
    
    
    @IBOutlet weak var pickerview: UIPickerView!
    
    @objc private func displayvalues(){
        self.selectedCityIndex = self.pickerview.selectedRow(inComponent: 0)
 
        let allData:String = "\(self.txtEmail.text!)\n \(self.txtcontactnumber.text!)\n \(self.citylist[selectedCityIndex]) \n \(self.txtPostalCode.text!) \n "
       
        let infoAlert = UIAlertController(title: "Verify you details", message: allData ,preferredStyle: .actionSheet)
        
        infoAlert.addAction(UIAlertAction(title:
    }
  
    
    func numberOfComponents(in pickerView: UIPickerView)-> Int
    {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView,numberOfRowsInComponent component:Int)-> Int
    {return self.citylist.count
    }


    
    override func viewDidLoad() {
        super.viewDidLoad()
//add data in picker
        self.pickerview.delegate = self
        self.pickerview.delegate = self
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

    }}
