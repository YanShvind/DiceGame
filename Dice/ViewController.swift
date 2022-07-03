//
//  ViewController.swift
//  Dice
//
//  Created by Yan Shvyndikov on 03.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceView1: UIImageView!
    @IBOutlet weak var diceView2: UIImageView!
    @IBOutlet weak var diceNumbers: UILabel!
    
    var touches = 0{
        didSet{
            diceNumbers.text = "\(touches)"
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func rollButton(_ sender: UIButton) {
        let diceArray = [#imageLiteral(resourceName: "dice1"), #imageLiteral(resourceName: "dice2"), #imageLiteral(resourceName: "dice3"), #imageLiteral(resourceName: "dice4"), #imageLiteral(resourceName: "dice5"), #imageLiteral(resourceName: "dice6")]
        diceView1.image = diceArray.randomElement()
        diceView2.image = diceArray.randomElement()
    }
    
}

