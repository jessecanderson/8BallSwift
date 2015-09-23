//
//  ViewController.swift
//  8BallSwift
//
//  Created by Jesse Anderson on 9/22/15.
//  Copyright © 2015 Jesse.C.Anderson. All rights reserved.
//

import UIKit
import iAd


class ViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var questionLabel2: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var shakeAgainLabel: UILabel!
    
    let answer = Answers()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.canDisplayBannerAds = true
        
        resetLabel()
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "applicationWillEnterForeground:", name: UIApplicationWillEnterForegroundNotification, object: nil)

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent?) {
        if motion == .MotionShake {
            questionLabel.hidden = true
            questionLabel2.hidden = true
            answerLabel.hidden = false
            shakeAgainLabel.hidden = false
            
            answerLabel.text = answer.getRandomAnswer()
        }
    }
    
    deinit {
        NSNotificationCenter.defaultCenter().removeObserver(self)
    }
    
    func applicationWillEnterForeground(notification: NSNotification) {
        resetLabel()
        print("Application entering foreground")
    }
    
    func resetLabel() {
        
        questionLabel.hidden = false
        questionLabel2.hidden = false
        answerLabel.hidden = true
        shakeAgainLabel.hidden = true
        
    }


}

