//
//  ChildsViewController.swift
//  APresent
//
//  Created by 陳廣莉 on 2017/12/24.
//  Copyright © 2017年 KuangliChen. All rights reserved.
//

import UIKit
import GameplayKit

class ChildsViewController: UIViewController {

    let superheroImage = ["ironman","thor","hulk","captainamerica"]
    
    func transparentButtons() {
        ironmanButton.alpha = 0.2
        thorButton.alpha = 0.2
        hulkButton.alpha = 0.2
        captainamericaButton.alpha = 0.2
    }
    
    
    @IBAction func play(_ sender: UIButton) {
        
        transparentButtons()
        sender.alpha = 1
        
        let randomDistribution = GKRandomDistribution(lowestValue:0,highestValue:3)
        let number = randomDistribution.nextInt()
        let myheroImage = superheroImage[number]
        
        batmanImage.image = UIImage(named:myheroImage)
        
        var isWin = false
        if sender == ironmanButton{
            if myheroImage == "ironman"{
                isWin = true
            }
        } else if sender == thorButton {
            if myheroImage == "thor"{
                isWin = true
            }
        } else if sender == hulkButton{
            if myheroImage == "hulk"{
                isWin = true
            }
        } else {
            if myheroImage == "captainamerica"{
                isWin = true
            }
            
            
        }
        
        if isWin == true{
            ironmanButton.isUserInteractionEnabled = false;
            thorButton.isUserInteractionEnabled = false;
            hulkButton.isUserInteractionEnabled = false;
            captainamericaButton.isUserInteractionEnabled = false;
            
            missionImage.isHidden = false
        }
        
        
        
        
        
        
        
        
        
        
        
    }
    
    
    
    
    
    @IBOutlet weak var missionImage: UIImageView!
    @IBOutlet weak var batmanImage: UIImageView!
    @IBOutlet weak var ironmanButton: UIButton!
    @IBOutlet weak var thorButton: UIButton!
    @IBOutlet weak var hulkButton: UIButton!
    @IBOutlet weak var captainamericaButton: UIButton!
    

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
