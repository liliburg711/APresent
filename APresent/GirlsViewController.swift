//
//  GirlsViewController.swift
//  APresent
//
//  Created by 陳廣莉 on 2017/12/18.
//  Copyright © 2017年 KuangliChen. All rights reserved.
//

import UIKit
import GameplayKit

class GirlsViewController: UIViewController {
    
    let christmasImage = ["santaclaus","christmastree","mitten2","snowman"]
    
    func transparentButtons() {
        santaclausButton.alpha = 0.2
        christmastreeButton.alpha = 0.2
        mitten2Button.alpha = 0.2
        snowmanButton.alpha = 0.2
    }
  
    @IBAction func play(_ sender: UIButton) {
        
        transparentButtons()
        sender.alpha = 1
        
        let randomDistribution = GKRandomDistribution(lowestValue:0,highestValue:3)
        let number = randomDistribution.nextInt()
        let mychristmasImage = christmasImage[number]
        
        snowglobeImage.image = UIImage(named:mychristmasImage)
        
        var isWin = false
        if sender == santaclausButton{
            if mychristmasImage == "santaclaus"{
                isWin = true
                innisfree.isHidden = false
            }
        } else if sender == christmastreeButton {
            if mychristmasImage == "christmastree"{
                isWin = true
                kiehls.isHidden = false
            }
        } else if sender == mitten2Button{
            if mychristmasImage == "mitten2"{
                isWin = true
                visee.isHidden = false
            }
        } else {
            if mychristmasImage == "snowman"{
                isWin = true
                oneshot.isHidden = false
            }
        
          
        }
        
        if isWin == true{
            santaclausButton.isUserInteractionEnabled = false;
            christmastreeButton.isUserInteractionEnabled = false;
            mitten2Button.isUserInteractionEnabled = false;
            snowmanButton.isUserInteractionEnabled = false;
            
            lion1Image.isHidden = false
        }
        
        
        
        
        
        
    }
    

 
    
    @IBOutlet weak var lion1Image: UIImageView!
    @IBOutlet weak var innisfree: UIImageView!
    @IBOutlet weak var kiehls: UIImageView!
    @IBOutlet weak var visee: UIImageView!
    @IBOutlet weak var oneshot: UIImageView!
    
    @IBOutlet weak var santaclausButton: UIButton!
    @IBOutlet weak var christmastreeButton: UIButton!
    @IBOutlet weak var mitten2Button: UIButton!
    @IBOutlet weak var snowmanButton: UIButton!
    @IBOutlet weak var snowglobeImage: UIImageView!
    
    
    
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
