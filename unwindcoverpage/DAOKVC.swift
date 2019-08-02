//
//  ViewController.swift
//  emojionalProject
//
//  Created by Apple on 7/26/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class DAOKVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    let emojis = ["🔮" : "Sayings", "💖" : "Plans", "🌟" : "Actions"]
    let customMessages = ["Sayings": ["text someone you miss them!", "remind someone you love them", "compliment someone's outfit!", "Love someone's hair? Tell them!", "did someome make you laugh today? let them know by texting them"], "Plans": ["caught up with work? make plans to relax with some friends", "find a park and meet some friends!", " get coffee with the person who makes you laugh", "invite friends to a movie!"],  "Actions": ["buy that special person some flowers", "hug your mom", "eat some food with a friend"], ]
    
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






