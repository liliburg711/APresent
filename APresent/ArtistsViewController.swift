//
//  ArtistsViewController.swift
//  APresent
//
//  Created by 陳廣莉 on 2017/12/25.
//  Copyright © 2017年 KuangliChen. All rights reserved.
//

import UIKit
import GameplayKit

class ArtistsViewController: UIViewController {

    let plantsImage = ["fruittree","pine","wheat","leaf"]
    
    func transparentButtons() {
        fruittreeButton.alpha = 0.2
        pineButton.alpha = 0.2
        wheatButton.alpha = 0.2
        leafButton.alpha = 0.2
    }
    
    
    @IBAction func play(_ sender: UIButton) {
        
        transparentButtons()
        sender.alpha = 1
        
        let randomDistribution = GKRandomDistribution(lowestValue:0,highestValue:3)
        let number = randomDistribution.nextInt()
        let myplantImage = plantsImage[number]
        
        roseImage.image = UIImage(named:myplantImage)
        
        var isWin = false
        if sender == fruittreeButton{
            if myplantImage == "fruittree"{
                isWin = true
            }
        } else if sender == pineButton {
            if myplantImage == "pine"{
                isWin = true
            }
        } else if sender == wheatButton{
            if myplantImage == "wheat"{
                isWin = true
            }
        } else {
            if myplantImage == "leaf"{
                isWin = true
            }
        
        
        }
            
        if isWin == true{
            fruittreeButton.isUserInteractionEnabled = false;
            pineButton.isUserInteractionEnabled = false;
            wheatButton.isUserInteractionEnabled = false;
            leafButton.isUserInteractionEnabled = false;
            
        }
    }
    
    
    
    
    @IBOutlet weak var roseImage: UIImageView!
    @IBOutlet weak var fruittreeButton: UIButton!
    @IBOutlet weak var pineButton: UIButton!
    @IBOutlet weak var wheatButton: UIButton!
    @IBOutlet weak var leafButton: UIButton!
    
    
    
    
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
