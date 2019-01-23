//
//  ViewController.swift
//  Jadoor7Ball
//
//  Created by Mohaimanul Hoque Chowdhury on 1/23/19.
//  Copyright © 2019 Mohaimanul Hoque Chowdhury. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ballImageView: UIImageView!
    var randomAnswerIndex : Int = 0;
    let allImageNames = ["ball1","ball2","ball3","ball4","ball5"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        generateAnswer()
    }
    
    @IBAction func btnAsk(_ sender: UIButton) {
    generateAnswer()
    }
    
    private func generateAnswer(){
        randomAnswerIndex = Int.random(in: 0...4)
        ballImageView.image = UIImage(named: allImageNames[randomAnswerIndex])
    }
    
}

