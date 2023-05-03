//
//  ViewController.swift
//  AnimationHW3.1
//
//  Created by AbuYusuf on 03.05.2023.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {
    
    @IBOutlet weak var animationView: SpringView!
    
    @IBOutlet weak var nameLabel: SpringLabel!
    @IBOutlet weak var curveLabel: SpringLabel!
    @IBOutlet weak var forceLabel: SpringLabel!
    @IBOutlet weak var durationLabel: SpringLabel!
    @IBOutlet weak var delayLabel: SpringLabel!
    
    private var animation = SpringAnimation.getAnimation()
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTextLabel()
        
    }
    @IBAction func runButtonPressed(_ sender: SpringButton) {
        animationView.animation = animation.name
        animationView.curve = animation.curve
        animationView.force = animation.force
        animationView.duration = animation.duration
        animationView.delay = animation.delay
        
        animationView.animate()
        setTextLabel()
        
        animation = SpringAnimation.getAnimation()
        sender.setTitle("Next \(animation.name)", for: .normal)

    }
    private func setTextLabel() {
        nameLabel.text = "name: \(animation.name)"
        curveLabel.text = "curve: \(animation.curve)"
        forceLabel.text = "force: \(String(format: "%.2f", animation.force))"
        durationLabel.text = "duration: \(String(format: "%.2f",animation.duration))"
        delayLabel.text = "delay: \(String(format: "%.2f",animation.delay))"
    }
    
}


