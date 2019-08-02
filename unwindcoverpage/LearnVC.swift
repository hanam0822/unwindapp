//
//  ViewController.swift
//  emojionalProject
//
//  Created by Apple on 7/26/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class LearnVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    let emojis = ["🌱" : "Nature", "🕰" : "Historical", "🗒" : "Random"]
    let customMessages = ["Nature": ["cows kill more people than sharks. crazy!", "you can fit all of the planets in the milky way between the earth and moon with a little space left over.", "lobsters don’t die of old age", "pineapples take two years to grow", "pluto hasn’t made a full orbit around the sun since it was discovered in 1930"], "Historical": ["The shortest war in history was the Anglo-Zanzibar War. It lasted just 38 minutes.", " The Leaning Tower of Pisa was actually never straight to begin with. The foundation began to sink when they started on the second floor.", " Ronald Reagan is best known for being President and acting in numerous films, but he was also a prolific lifeguard, who saved 77 people from drowning."],  "Random": ["The average person will spend six months of their life waiting for red lights to turn green", "A bolt of lightning contains enough energy to toast 100,000 slices of bread", "Cherophobia is the word for the irrational fear of being happy"], ]

    @IBAction func showMessage(sender: UIButton) {
        let selectedEmotion = sender.titleLabel?.text
        
        // the rest of your code from Iteration 1
        // top part of the message
        
        let randomMess = Int.random(in: 0..<3)
        let emojiMessage = customMessages[emojis[selectedEmotion!]!]?[randomMess]
        
        let alertController = UIAlertController.init(title: emojis[selectedEmotion!], message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
        
        
        
        // bottom part of the message
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        
        // makes the message appear and disappear
        present(alertController, animated: true, completion: nil)
    }
    
}






