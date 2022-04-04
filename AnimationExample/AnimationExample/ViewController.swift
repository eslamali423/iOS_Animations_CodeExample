//
//  ViewController.swift
//  AnimationExample
//
//  Created by Eslam Ali  on 04/04/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var heartImageView: UIImageView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureButtons()

    
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        displayButtonsWithAnnimation()
        animateHeartImage()
    }
    
    
    func configureButtons()  {
       // set the corner radius to the buttons
        button1.layer.cornerRadius = 10
        button2.layer.cornerRadius = 10
        button3.layer.cornerRadius = 10
        button4.layer.cornerRadius = 10
        // set alpha =  0 at first , will change it later
        button1.alpha = 0
        button2.alpha = 0
        button3.alpha = 0
        button4.alpha = 0
    }
    
    func displayButtonsWithAnnimation()   {
       // this for display the button
        // change the alpha from 0 to 0.65
        UIView.animate(withDuration: 0.5) {
            self.button1.alpha = 0.65
            self.button2.alpha = 0.65
            self.button3.alpha = 0.65
            self.button4.alpha = 0.65
        }
        // this for change the buttons position
        UIView.animate(withDuration: 0.5) {
            self.button1.center.y += 50
            self.button2.center.y += 50
            self.button3.center.y += 50
            self.button4.center.y += 50
        }
        
    }
    
    func animateHeartImage()  {
        UIView.animateKeyframes(withDuration: 0.5, delay: 2, options: [.repeat, .autoreverse]) {
            self.heartImageView.frame = CGRect(x: self.heartImageView.frame.minX - 25, y: self.heartImageView.frame.minY - 25, width: self.heartImageView.frame.size.width + 50, height: self.heartImageView.frame.size.width + 50)
        }
    }
    
    func animateButton () {
        UIView.animate(withDuration: 0.5) {
            self.button1.layer.transform = CATransform3DMakeScale(1.2, 1.2, 1)
        } completion: { (isDone) in
            if isDone {
                UIView.animate(withDuration: 0.5) {
                    self.button1.layer.transform = CATransform3DMakeScale(1, 1, 1)
                }
            }
        }
        
        UIView.animate(withDuration: 0.4) {
            self.button2.layer.transform = CATransform3DMakeScale(1.2, 1.2, 1)
        } completion: { (isDone) in
            if isDone {
                UIView.animate(withDuration: 0.4) {
                    self.button2.layer.transform = CATransform3DMakeScale(1, 1, 1)
                }
            }
        }
        
        UIView.animate(withDuration: 0.3) {
            self.button3.layer.transform = CATransform3DMakeScale(1.2, 1.2, 1)
        } completion: { (isDone) in
            if isDone {
                UIView.animate(withDuration: 0.4) {
                    self.button3.layer.transform = CATransform3DMakeScale(1, 1, 1)
                }
            }
        }
        
        UIView.animate(withDuration: 0.45) {
            self.button4.layer.transform = CATransform3DMakeScale(1.2, 1.2, 1)
        } completion: { (isDone) in
            if isDone {
                UIView.animate(withDuration: 0.45) {
                    self.button4.layer.transform = CATransform3DMakeScale(1, 1, 1)
                }
            }
        }
        
        
        
        
        
        
        
        
    }

    @IBAction func didTapButton4(_ sender: Any) {
        animateButton()
    }
    @IBAction func didTapButton1(_ sender: Any) {
        animateButton()
    }
    @IBAction func didTapButton2(_ sender: Any) {
        animateButton()
    }
    @IBAction func didTapButton3(_ sender: Any) {
        animateButton()
    }
}

