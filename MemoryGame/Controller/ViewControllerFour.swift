//
//  ViewControllerFour.swift
//  MemoryGame
//
//  Created by IOS on 22/09/20.
//  Copyright © 2020 iOS. All rights reserved.
//

import UIKit

protocol backDelegate16 {
    func getScore16(data: Int)
}

class ViewControllerFour: UIViewController {

    var delegate: backDelegate16?
    var cardOf16 = [Card]()
    var temp : String = ""
    var tempNumber : Int = 0
    var memoryBrain = MemoryBrain()
    var score : Int = 1000
    var langkah : Int = 0
    var success : Int = 0
    var timer = Timer()
    
    @IBOutlet weak var cardImage0: UIImageView!
    @IBOutlet weak var cardImage1: UIImageView!
    @IBOutlet weak var cardImage2: UIImageView!
    @IBOutlet weak var cardImage3: UIImageView!
    @IBOutlet weak var cardImage4: UIImageView!
    @IBOutlet weak var cardImage5: UIImageView!
    @IBOutlet weak var cardImage6: UIImageView!
    @IBOutlet weak var cardImage7: UIImageView!
    @IBOutlet weak var cardImage8: UIImageView!
    @IBOutlet weak var cardImage9: UIImageView!
    @IBOutlet weak var cardImage10: UIImageView!
    @IBOutlet weak var cardImage11: UIImageView!
    @IBOutlet weak var cardImage12: UIImageView!
    @IBOutlet weak var cardImage13: UIImageView!
    @IBOutlet weak var cardImage14: UIImageView!
    @IBOutlet weak var cardImage15: UIImageView!
    @IBOutlet weak var counterScore: UILabel!
    @IBAction func buttonCard(_ sender: UIButton) {
        let counter : Int = Int(sender.currentTitle!.suffix(2)) ?? 0
        if success == 8 {
            delegate?.getScore16(data: score)
            navigationController?.popViewController(animated: true)
        }
        if temp == "" {
            if cardOf16[counter].isSelected == false && cardOf16[counter].isMatched == false {
                print("card \(counter) is selected!")
                cardOf16[counter].isSelected = true
                temp = cardOf16[counter].name
                tempNumber = counter
            }
        }
        else {
            if cardOf16[counter].isSelected == false && cardOf16[counter].isMatched == false {
                print("card \(counter) is selected!")
                cardOf16[counter].isSelected = true
                if temp == cardOf16[counter].name {
                    cardOf16[tempNumber].isMatched = true
                    cardOf16[counter].isMatched = true
                    print("Card Matched!")
                    success += 1
                }
                else {
                    checkCard()
                    cardOf16[tempNumber].isSelected = false
                    cardOf16[counter].isSelected = false
                }
                temp = ""
                tempNumber = 0
                langkah += 1
                score = 10000/langkah
                counterScore.text = String(score)
            }
        }
        checkCard()
        timer.invalidate()
        timer = Timer.scheduledTimer(timeInterval: 1.0, target:self, selector: #selector(updateTimer), userInfo:nil, repeats: true)
    }
    @objc func updateTimer() {
        if(cardOf16[0].isSelected == false && cardOf16[0].isMatched == false) {
            cardImage0.image = UIImage(named: "question-mark")
        }
        if(cardOf16[1].isSelected == false && cardOf16[1].isMatched == false) {
            cardImage1.image = UIImage(named: "question-mark")
        }
        if(cardOf16[2].isSelected == false && cardOf16[2].isMatched == false) {
            cardImage2.image = UIImage(named: "question-mark")
        }
        if(cardOf16[3].isSelected == false && cardOf16[3].isMatched == false) {
            cardImage3.image = UIImage(named: "question-mark")
        }
        if(cardOf16[4].isSelected == false && cardOf16[4].isMatched == false) {
            cardImage4.image = UIImage(named: "question-mark")
        }
        if(cardOf16[5].isSelected == false && cardOf16[5].isMatched == false) {
            cardImage5.image = UIImage(named: "question-mark")
        }
        if(cardOf16[6].isSelected == false && cardOf16[6].isMatched == false) {
            cardImage6.image = UIImage(named: "question-mark")
        }
        if(cardOf16[7].isSelected == false && cardOf16[7].isMatched == false) {
            cardImage7.image = UIImage(named: "question-mark")
        }
        if(cardOf16[8].isSelected == false && cardOf16[8].isMatched == false) {
            cardImage8.image = UIImage(named: "question-mark")
        }
        if(cardOf16[9].isSelected == false && cardOf16[9].isMatched == false) {
            cardImage9.image = UIImage(named: "question-mark")
        }
        if(cardOf16[10].isSelected == false && cardOf16[10].isMatched == false) {
            cardImage10.image = UIImage(named: "question-mark")
        }
        if(cardOf16[11].isSelected == false && cardOf16[11].isMatched == false) {
            cardImage11.image = UIImage(named: "question-mark")
        }
        if(cardOf16[12].isSelected == false && cardOf16[12].isMatched == false) {
            cardImage12.image = UIImage(named: "question-mark")
        }
        if(cardOf16[13].isSelected == false && cardOf16[13].isMatched == false) {
            cardImage13.image = UIImage(named: "question-mark")
        }
        if(cardOf16[14].isSelected == false && cardOf16[14].isMatched == false) {
            cardImage14.image = UIImage(named: "question-mark")
        }
        if(cardOf16[15].isSelected == false && cardOf16[15].isMatched == false) {
            cardImage15.image = UIImage(named: "question-mark")
        }
    }
    func checkCard() {
        if(cardOf16[0].isSelected == true || cardOf16[0].isMatched == true) {
            cardImage0.image = UIImage(named: cardOf16[0].name)
        }
        if(cardOf16[1].isSelected == true || cardOf16[1].isMatched == true) {
            cardImage1.image = UIImage(named: cardOf16[1].name)
        }
        if(cardOf16[2].isSelected == true || cardOf16[2].isMatched == true) {
            cardImage2.image = UIImage(named: cardOf16[2].name)
        }
        if(cardOf16[3].isSelected == true || cardOf16[3].isMatched == true) {
            cardImage3.image = UIImage(named: cardOf16[3].name)
        }
        if(cardOf16[4].isSelected == true || cardOf16[4].isMatched == true) {
            cardImage4.image = UIImage(named: cardOf16[4].name)
        }
        if(cardOf16[5].isSelected == true || cardOf16[5].isMatched == true) {
            cardImage5.image = UIImage(named: cardOf16[5].name)
        }
        if(cardOf16[6].isSelected == true || cardOf16[6].isMatched == true) {
            cardImage6.image = UIImage(named: cardOf16[6].name)
        }
        if(cardOf16[7].isSelected == true || cardOf16[7].isMatched == true) {
            cardImage7.image = UIImage(named: cardOf16[7].name)
        }
        if(cardOf16[8].isSelected == true || cardOf16[8].isMatched == true) {
            cardImage8.image = UIImage(named: cardOf16[8].name)
        }
        if(cardOf16[9].isSelected == true || cardOf16[9].isMatched == true) {
            cardImage9.image = UIImage(named: cardOf16[9].name)
        }
        if(cardOf16[10].isSelected == true || cardOf16[10].isMatched == true) {
            cardImage10.image = UIImage(named: cardOf16[10].name)
        }
        if(cardOf16[11].isSelected == true || cardOf16[11].isMatched == true) {
            cardImage11.image = UIImage(named: cardOf16[11].name)
        }
        if(cardOf16[12].isSelected == true || cardOf16[12].isMatched == true) {
            cardImage12.image = UIImage(named: cardOf16[12].name)
        }
        if(cardOf16[13].isSelected == true || cardOf16[13].isMatched == true) {
            cardImage13.image = UIImage(named: cardOf16[13].name)
        }
        if(cardOf16[14].isSelected == true || cardOf16[14].isMatched == true) {
            cardImage14.image = UIImage(named: cardOf16[14].name)
        }
        if(cardOf16[15].isSelected == true || cardOf16[15].isMatched == true) {
            cardImage15.image = UIImage(named: cardOf16[15].name)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        memoryBrain.generateCards16()
        cardOf16 = memoryBrain.getCards()
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
