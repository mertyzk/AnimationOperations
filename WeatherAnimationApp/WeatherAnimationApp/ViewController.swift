//
//  ViewController.swift
//  WeatherAnimationApp
//
//  Created by Macbook Air on 13.02.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var buttonOutlet: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func startButton(_ sender: Any) {
        //alphaAnimation()
        //scaleAntimation()
        //rotateAnimation()ü
        //translationAnimation()
        //delayAnimation()
        //accelerationAnimation()
        //repeatAnimation()
        //multipleAnimation()
        consecutiveAnimation()
    }
    
    func alphaAnimation(){
        self.imageView.alpha = 0.2
        UIView.animate(withDuration: 5, animations: {
            self.imageView.alpha = 1
        },completion: nil)
    }
    
    func scaleAntimation(){
        UIView.animate(withDuration: 1, animations: {
            self.imageView.transform = CGAffineTransform(scaleX: 2, y: 2)
        },completion: nil)
    }
    
    func rotateAnimation(){
        UIView.animate(withDuration: 1, animations: { [self] in
            self.textLabel.transform = CGAffineTransform(rotationAngle: 90 * .pi/180)
        },completion: nil)
    }
    
    func translationAnimation(){
        UIView.animate(withDuration: 1, animations: {
            self.buttonOutlet.transform = CGAffineTransform(translationX: 50, y: 0)
        },completion: nil)
    }
    
    func delayAnimation(){
        UIView.animate(withDuration: 2, delay: 1,animations: {
            self.textLabel.transform = CGAffineTransform(translationX: 0, y: 25)
        },completion: nil)
    }
    
    func accelerationAnimation(){
        UIView.animate(withDuration: 2, delay: 0, options: [.curveEaseOut], animations: {
            self.textLabel.transform = CGAffineTransform(translationX: 0, y: 25)
        },completion: nil)
    }
    
    func repeatAnimation(){
        UIView.animate(withDuration: 1, delay: 0, options: [.autoreverse], animations: {
            self.imageView.transform = CGAffineTransform(translationX: 0, y: 25)
        },completion: nil)
    }
    
    func multipleAnimation(){
        UIView.animate(withDuration: 1, animations: {
            
            self.textLabel.alpha = 0
        }, completion: nil)
    }
    
    func consecutiveAnimation(){
        UIView.animate(withDuration: 1, animations: {
            self.imageView.alpha = 0
        },completion: { (true) in
            UIView.animate(withDuration: 1, animations: {
                self.textLabel.alpha = 0
            },completion: nil)
        })
    }
    
    
    
    
}
                       
