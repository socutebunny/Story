//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by consultant on 12/14/18.
//  Copyright © 2018 soofei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let questions = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomAnswer : Int = 0

    
    @IBOutlet weak var magic8Ball: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generateRandomAnswer()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        generateRandomAnswer()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askButton(_ sender: UIButton) {
        generateRandomAnswer()
        
    }
    
    func generateRandomAnswer () {
        
        randomAnswer = Int(arc4random_uniform(4))
        
        magic8Ball.image = UIImage(named: questions[randomAnswer])
        
    }
}

