//
//  ViewController.swift
//  day6
//
//  Created by MacStudent on 2018-02-27.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class firstmenu: UIViewController {

    @IBOutlet weak var TxtCarColor: UITextField!
    @IBOutlet weak var TxtCarPlate: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func btnListAll(_ sender: UIButton) {
        
        
    }
    
    @IBAction func btnAddNew(_ sender: Any) {
        
        self.writePropertyList()
    }
  
    
    func writePropertyList()
    {
       
        let myCar = NSMutableDictionary()
        
        myCar["CarPlate"] = self.TxtCarPlate.text
        myCar["CarColour"] = self.TxtCarColor.text
        
        if  let plistPath = Bundle.main.path(forResource: "Cars1", ofType:"plist"){
            let carsplist = NSMutableArray(contentsOfFile:plistPath)
            carsplist?.add(myCar)
            if(carsplist?.write(toFile: plistPath,atomically:true))!{
                print("carslist:\(String(describing:carsplist))")
            }
            
        }
        else{
            print("Unable to locate plist file")
        }
    
        
        
        
        
        
        
        
        
    }
    
    
    
}

