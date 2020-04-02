//
//  ViewController.swift
//  Homework 6
//
//  Created by Kai Marshall on 3/20/20.
//  Copyright © 2020 Kai Marshall. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var yesVoteCounter: UILabel!
    @IBOutlet weak var noVoteCounter: UILabel!
    @IBOutlet weak var winnerVote: UILabel!
    
    
    override func viewWillAppear(_ animated: Bool){
        yesVoteCounter.text = String((parent as! TBViewController) .yesVote)
        noVoteCounter.text = String((parent as! TBViewController).noteVote)
        
        if (parent as! TBViewController).yesVote  >  (parent as! TBViewController).noVote
        {
            winnerVote.text = "Yes!"
        } else {
            winnerVote.text = "No!"
        }
        
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

