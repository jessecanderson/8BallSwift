//
//  Answers.swift
//  8BallSwift
//
//  Created by Jesse Anderson on 9/22/15.
//  Copyright © 2015 Jesse.C.Anderson. All rights reserved.
//

import Foundation

class Answers {
    
    let answers: [String] = ["It is certain", "It is decidedly so", "Without a doubt", "Yes, definitely", "You may rely on it", "As I see it, yes", "Most likely", "Outlook good", "Yes", "Signs point to yes", "Reply hazy try again", "Ask again later", "Better not tell you now", "Cannot predict now", "Concentrate and ask again", "Don't count on it", "My replay is no", "My sources say no", "Outlook not so good", "Very doubtful"]
    
    
    
    func getRandomAnswer() -> String {
        
        let randomIndex = Int(arc4random_uniform(UInt32(answers.count)))
        
        return answers[randomIndex]
    }

    
    
    
    
    
    
    
}
