//
//  ViewController.swift
//  day6second
//
//  Created by MacStudent on 2018-02-27.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblStepper: UILabel!
    @IBOutlet weak var myStepper: UIStepper!
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    @IBOutlet weak var moodsSegment: UISegmentedControl!
    
    @IBOutlet weak var imgMood: UIImageView!
    
    @IBOutlet weak var mySlider: UISlider!
    
    @IBOutlet weak var lblSliderValue: UILabel!
    
    
    @IBOutlet weak var myProgressView: UIProgressView!
    
    @IBOutlet weak var lblProgress: UILabel!
    
    var moodImages:[UIImage] = [ UIImage(named:"happy-kitten-kittens-5890512-1600-1200.jpg")!,UIImage(named:"angry-kitten7.jpg")!, UIImage(named:"index.jpg")!]
    
var progressTimer = Timer()
    
   
    
    
    
    @IBAction func btnStartAction(_ sender: UIButton) {
        activityIndicator.startAnimating()
    }
    
    @IBAction func btnStopAction(_ sender: UIButton) {
   
        activityIndicator.stopAnimating()
    
    }
    
    @IBAction func segmentChange(_ sender: UISegmentedControl) {
        
        print("selected:\(moodsSegment.selectedSegmentIndex)")
        imgMood.image = moodImages[moodsSegment.selectedSegmentIndex]
        
        
    }
    
    
    @IBAction func mySliderAction(_ sender: UISlider) {
    
    lblSliderValue.text = String(mySlider.value)
    }
    
    
    @IBAction func StepperChange(_ sender: UIStepper) {
        lblStepper.text = String(myStepper.value)
    }
    
    @IBAction func btStartProgressAction(_ sender: UIButton) {
        
        self.myProgressView.progress += 0.01
        
        self.lblProgress.text = "\(Int(self.myProgressView.progress * 100))%"
    
        if self.myProgressView.progress >= 1 {
            self.progressTimer.invalidate()
        }
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myProgressView.progress = 0.0
        lblProgress.text = "\(Int(myProgressView.progress * 100))%"
        self.progressTimer = Timer.scheduledTimer(timeInterval : 0.3, target: self , selector: #selector(self.btStartProgressAction), userInfo: nil, repeats: true )
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

