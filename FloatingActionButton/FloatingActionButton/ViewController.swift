//
//  ViewController.swift
//  FloatingActionButton
//
//  Created by Macbook Air on 14.02.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fabMainOutlet: UIButton!
    @IBOutlet weak var fabFirst: UIButton!
    @IBOutlet weak var fabTwo: UIButton!
    var fabStatus = false
    override func viewDidLoad() {
        super.viewDidLoad()
        fabMainOutlet.layer.cornerRadius = fabMainOutlet.frame.size.width/2
        fabFirst.layer.cornerRadius = fabFirst.frame.size.width/2
        fabTwo.layer.cornerRadius = fabTwo.frame.size.width/2
        
        fabFirst.alpha = 0
        fabTwo.alpha = 0
        self.fabFirst.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        self.fabTwo.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        
    }

    @IBAction func fabMainClick(_ sender: Any) {
        print("fab main clicked")
        
        UIView.animate(withDuration: 0.5, animations: {
            
            if self.fabStatus {
                self.fabFirst.alpha = 0
                self.fabTwo.alpha = 0
                
                self.fabMainOutlet.transform = CGAffineTransform(rotationAngle: 0 * .pi/180)
                self.fabFirst.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
                self.fabTwo.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
                
                
                self.fabStatus = false
            }else{
                self.fabFirst.alpha = 1
                self.fabTwo.alpha = 1
                
                self.fabMainOutlet.transform = CGAffineTransform(rotationAngle: 45 * .pi/180)
                self.fabFirst.transform = CGAffineTransform(scaleX: 1, y: 1)
                self.fabTwo.transform = CGAffineTransform(scaleX: 1, y: 1)
                
                self.fabStatus = true
            }



        }, completion: nil)
        
        
       
    }
    
    @IBAction func fabOneAction(_ sender: Any) {
        print("fab one clicked")
    }
    @IBAction func fabTwoAction(_ sender: Any) {
        print("fac two clicked")
    }
}

