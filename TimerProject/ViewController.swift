//
//  ViewController.swift
//  TimerProject
//
//  Created by Ayub Ali on 2021-03-12.
//

import UIKit

class ViewController: UIViewController {

    var timer = Timer()
    var counter = 0
    
    @IBOutlet weak var timerLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        counter = 10
        
        timerLabel.text = "Time: \(counter)"
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunction), userInfo: nil, repeats: true)
    }
    @objc func timerFunction(){
        timerLabel.text = "Time: \(counter)"
        counter -= 1
        
        if counter == 0{
            timer.invalidate()
            timerLabel.text = "Time is over"
        }
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        print("Button Tapped")
    }
    
}

