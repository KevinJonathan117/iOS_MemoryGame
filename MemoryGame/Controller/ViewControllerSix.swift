//
//  ViewControllerSix.swift
//  MemoryGame
//
//  Created by IOS on 25/09/20.
//  Copyright © 2020 iOS. All rights reserved.
//

import UIKit

protocol backDelegate36 {
    func getScore36(data: Int)
}

class ViewControllerSix: UIViewController {

    var delegate: backDelegate36?
    var cardOf36 = [Card]()
    var temp : String = ""
    var tempNumber : Int = 0
    var memoryBrain = MemoryBrain()
    var score : Int = 1000
    var langkah : Int = 0
    var success : Int = 0
    var timer = Timer()
    
    @IBOutlet weak var counterScore: UILabel!
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
    @IBOutlet weak var cardImage16: UIImageView!
    @IBOutlet weak var cardImage17: UIImageView!
    @IBOutlet weak var cardImage18: UIImageView!
    @IBOutlet weak var cardImage19: UIImageView!
    @IBOutlet weak var cardImage20: UIImageView!
    @IBOutlet weak var cardImage21: UIImageView!
    @IBOutlet weak var cardImage22: UIImageView!
    @IBOutlet weak var cardImage23: UIImageView!
    @IBOutlet weak var cardImage24: UIImageView!
    @IBOutlet weak var cardImage25: UIImageView!
    @IBOutlet weak var cardImage26: UIImageView!
    @IBOutlet weak var cardImage27: UIImageView!
    @IBOutlet weak var cardImage28: UIImageView!
    @IBOutlet weak var cardImage29: UIImageView!
    @IBOutlet weak var cardImage30: UIImageView!
    @IBOutlet weak var cardImage31: UIImageView!
    @IBOutlet weak var cardImage32: UIImageView!
    @IBOutlet weak var cardImage33: UIImageView!
    @IBOutlet weak var cardImage34: UIImageView!
    @IBOutlet weak var cardImage35: UIImageView!
    @IBAction func buttonCard(_ sender: UIButton) {
        let counter : Int = Int(sender.currentTitle!.suffix(2)) ?? 0
        if success == 18 {
            delegate?.getScore36(data: score)
            navigationController?.popViewController(animated: true)
        }
        if temp == "" {
            if cardOf36[counter].isSelected == false && cardOf36[counter].isMatched == false {
                print("card \(counter) is selected!")
                cardOf36[counter].isSelected = true
                temp = cardOf36[counter].name
                tempNumber = counter
            }
        }
        else {
            if cardOf36[counter].isSelected == false && cardOf36[counter].isMatched == false {
                print("card \(counter) is selected!")
                cardOf36[counter].isSelected = true
                if temp == cardOf36[counter].name {
                    cardOf36[tempNumber].isMatched = true
                    cardOf36[counter].isMatched = true
                    print("Card Matched!")
                    success += 1
                }
                else {
                    checkCard()
                    cardOf36[tempNumber].isSelected = false
                    cardOf36[counter].isSelected = false
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
        if(cardOf36[0].isSelected == false && cardOf36[0].isMatched == false) {
            cardImage0.image = UIImage(named: "question-mark")
        }
        if(cardOf36[1].isSelected == false && cardOf36[1].isMatched == false) {
            cardImage1.image = UIImage(named: "question-mark")
        }
        if(cardOf36[2].isSelected == false && cardOf36[2].isMatched == false) {
            cardImage2.image = UIImage(named: "question-mark")
        }
        if(cardOf36[3].isSelected == false && cardOf36[3].isMatched == false) {
            cardImage3.image = UIImage(named: "question-mark")
        }
        if(cardOf36[4].isSelected == false && cardOf36[4].isMatched == false) {
            cardImage4.image = UIImage(named: "question-mark")
        }
        if(cardOf36[5].isSelected == false && cardOf36[5].isMatched == false) {
            cardImage5.image = UIImage(named: "question-mark")
        }
        if(cardOf36[6].isSelected == false && cardOf36[6].isMatched == false) {
            cardImage6.image = UIImage(named: "question-mark")
        }
        if(cardOf36[7].isSelected == false && cardOf36[7].isMatched == false) {
            cardImage7.image = UIImage(named: "question-mark")
        }
        if(cardOf36[8].isSelected == false && cardOf36[8].isMatched == false) {
            cardImage8.image = UIImage(named: "question-mark")
        }
        if(cardOf36[9].isSelected == false && cardOf36[9].isMatched == false) {
            cardImage9.image = UIImage(named: "question-mark")
        }
        if(cardOf36[10].isSelected == false && cardOf36[10].isMatched == false) {
            cardImage10.image = UIImage(named: "question-mark")
        }
        if(cardOf36[11].isSelected == false && cardOf36[11].isMatched == false) {
            cardImage11.image = UIImage(named: "question-mark")
        }
        if(cardOf36[12].isSelected == false && cardOf36[12].isMatched == false) {
            cardImage12.image = UIImage(named: "question-mark")
        }
        if(cardOf36[13].isSelected == false && cardOf36[13].isMatched == false) {
            cardImage13.image = UIImage(named: "question-mark")
        }
        if(cardOf36[14].isSelected == false && cardOf36[14].isMatched == false) {
            cardImage14.image = UIImage(named: "question-mark")
        }
        if(cardOf36[15].isSelected == false && cardOf36[15].isMatched == false) {
            cardImage15.image = UIImage(named: "question-mark")
        }
        if(cardOf36[15].isSelected == false && cardOf36[15].isMatched == false) {
            cardImage15.image = UIImage(named: "question-mark")
        }
        if(cardOf36[15].isSelected == false && cardOf36[15].isMatched == false) {
            cardImage15.image = UIImage(named: "question-mark")
        }
        if(cardOf36[16].isSelected == false && cardOf36[16].isMatched == false) {
            cardImage16.image = UIImage(named: "question-mark")
        }
        if(cardOf36[17].isSelected == false && cardOf36[17].isMatched == false) {
            cardImage17.image = UIImage(named: "question-mark")
        }
        if(cardOf36[18].isSelected == false && cardOf36[18].isMatched == false) {
            cardImage18.image = UIImage(named: "question-mark")
        }
        if(cardOf36[19].isSelected == false && cardOf36[19].isMatched == false) {
            cardImage19.image = UIImage(named: "question-mark")
        }
        if(cardOf36[20].isSelected == false && cardOf36[20].isMatched == false) {
            cardImage20.image = UIImage(named: "question-mark")
        }
        if(cardOf36[21].isSelected == false && cardOf36[21].isMatched == false) {
            cardImage21.image = UIImage(named: "question-mark")
        }
        if(cardOf36[22].isSelected == false && cardOf36[22].isMatched == false) {
            cardImage22.image = UIImage(named: "question-mark")
        }
        if(cardOf36[23].isSelected == false && cardOf36[23].isMatched == false) {
            cardImage23.image = UIImage(named: "question-mark")
        }
        if(cardOf36[24].isSelected == false && cardOf36[24].isMatched == false) {
            cardImage24.image = UIImage(named: "question-mark")
        }
        if(cardOf36[25].isSelected == false && cardOf36[25].isMatched == false) {
            cardImage25.image = UIImage(named: "question-mark")
        }
        if(cardOf36[26].isSelected == false && cardOf36[26].isMatched == false) {
            cardImage26.image = UIImage(named: "question-mark")
        }
        if(cardOf36[27].isSelected == false && cardOf36[27].isMatched == false) {
            cardImage27.image = UIImage(named: "question-mark")
        }
        if(cardOf36[28].isSelected == false && cardOf36[28].isMatched == false) {
            cardImage28.image = UIImage(named: "question-mark")
        }
        if(cardOf36[29].isSelected == false && cardOf36[29].isMatched == false) {
            cardImage29.image = UIImage(named: "question-mark")
        }
        if(cardOf36[30].isSelected == false && cardOf36[30].isMatched == false) {
            cardImage30.image = UIImage(named: "question-mark")
        }
        if(cardOf36[31].isSelected == false && cardOf36[31].isMatched == false) {
            cardImage31.image = UIImage(named: "question-mark")
        }
        if(cardOf36[32].isSelected == false && cardOf36[32].isMatched == false) {
            cardImage32.image = UIImage(named: "question-mark")
        }
        if(cardOf36[33].isSelected == false && cardOf36[33].isMatched == false) {
            cardImage33.image = UIImage(named: "question-mark")
        }
        if(cardOf36[34].isSelected == false && cardOf36[34].isMatched == false) {
            cardImage34.image = UIImage(named: "question-mark")
        }
        if(cardOf36[35].isSelected == false && cardOf36[35].isMatched == false) {
            cardImage35.image = UIImage(named: "question-mark")
        }
    }
    func checkCard() {
        if(cardOf36[0].isSelected == true || cardOf36[0].isMatched == true) {
            cardImage0.image = UIImage(named: cardOf36[0].name)
        }
        if(cardOf36[1].isSelected == true || cardOf36[1].isMatched == true) {
            cardImage1.image = UIImage(named: cardOf36[1].name)
        }
        if(cardOf36[2].isSelected == true || cardOf36[2].isMatched == true) {
            cardImage2.image = UIImage(named: cardOf36[2].name)
        }
        if(cardOf36[3].isSelected == true || cardOf36[3].isMatched == true) {
            cardImage3.image = UIImage(named: cardOf36[3].name)
        }
        if(cardOf36[4].isSelected == true || cardOf36[4].isMatched == true) {
            cardImage4.image = UIImage(named: cardOf36[4].name)
        }
        if(cardOf36[5].isSelected == true || cardOf36[5].isMatched == true) {
            cardImage5.image = UIImage(named: cardOf36[5].name)
        }
        if(cardOf36[6].isSelected == true || cardOf36[6].isMatched == true) {
            cardImage6.image = UIImage(named: cardOf36[6].name)
        }
        if(cardOf36[7].isSelected == true || cardOf36[7].isMatched == true) {
            cardImage7.image = UIImage(named: cardOf36[7].name)
        }
        if(cardOf36[8].isSelected == true || cardOf36[8].isMatched == true) {
            cardImage8.image = UIImage(named: cardOf36[8].name)
        }
        if(cardOf36[9].isSelected == true || cardOf36[9].isMatched == true) {
            cardImage9.image = UIImage(named: cardOf36[9].name)
        }
        if(cardOf36[10].isSelected == true || cardOf36[10].isMatched == true) {
            cardImage10.image = UIImage(named: cardOf36[10].name)
        }
        if(cardOf36[11].isSelected == true || cardOf36[11].isMatched == true) {
            cardImage11.image = UIImage(named: cardOf36[11].name)
        }
        if(cardOf36[12].isSelected == true || cardOf36[12].isMatched == true) {
            cardImage12.image = UIImage(named: cardOf36[12].name)
        }
        if(cardOf36[13].isSelected == true || cardOf36[13].isMatched == true) {
            cardImage13.image = UIImage(named: cardOf36[13].name)
        }
        if(cardOf36[14].isSelected == true || cardOf36[14].isMatched == true) {
            cardImage14.image = UIImage(named: cardOf36[14].name)
        }
        if(cardOf36[15].isSelected == true || cardOf36[15].isMatched == true) {
            cardImage15.image = UIImage(named: cardOf36[15].name)
        }
        if(cardOf36[16].isSelected == true || cardOf36[16].isMatched == true) {
            cardImage16.image = UIImage(named: cardOf36[16].name)
        }
        if(cardOf36[17].isSelected == true || cardOf36[17].isMatched == true) {
            cardImage17.image = UIImage(named: cardOf36[17].name)
        }
        if(cardOf36[18].isSelected == true || cardOf36[18].isMatched == true) {
            cardImage18.image = UIImage(named: cardOf36[18].name)
        }
        if(cardOf36[19].isSelected == true || cardOf36[19].isMatched == true) {
            cardImage19.image = UIImage(named: cardOf36[19].name)
        }
        if(cardOf36[20].isSelected == true || cardOf36[20].isMatched == true) {
            cardImage20.image = UIImage(named: cardOf36[20].name)
        }
        if(cardOf36[21].isSelected == true || cardOf36[21].isMatched == true) {
            cardImage21.image = UIImage(named: cardOf36[21].name)
        }
        if(cardOf36[22].isSelected == true || cardOf36[22].isMatched == true) {
            cardImage22.image = UIImage(named: cardOf36[22].name)
        }
        if(cardOf36[23].isSelected == true || cardOf36[23].isMatched == true) {
            cardImage23.image = UIImage(named: cardOf36[23].name)
        }
        if(cardOf36[24].isSelected == true || cardOf36[24].isMatched == true) {
            cardImage24.image = UIImage(named: cardOf36[24].name)
        }
        if(cardOf36[25].isSelected == true || cardOf36[25].isMatched == true) {
            cardImage25.image = UIImage(named: cardOf36[25].name)
        }
        if(cardOf36[26].isSelected == true || cardOf36[26].isMatched == true) {
            cardImage26.image = UIImage(named: cardOf36[26].name)
        }
        if(cardOf36[27].isSelected == true || cardOf36[27].isMatched == true) {
            cardImage27.image = UIImage(named: cardOf36[27].name)
        }
        if(cardOf36[28].isSelected == true || cardOf36[28].isMatched == true) {
            cardImage28.image = UIImage(named: cardOf36[28].name)
        }
        if(cardOf36[29].isSelected == true || cardOf36[29].isMatched == true) {
            cardImage29.image = UIImage(named: cardOf36[29].name)
        }
        if(cardOf36[30].isSelected == true || cardOf36[30].isMatched == true) {
            cardImage30.image = UIImage(named: cardOf36[30].name)
        }
        if(cardOf36[31].isSelected == true || cardOf36[31].isMatched == true) {
            cardImage31.image = UIImage(named: cardOf36[31].name)
        }
        if(cardOf36[32].isSelected == true || cardOf36[32].isMatched == true) {
            cardImage32.image = UIImage(named: cardOf36[32].name)
        }
        if(cardOf36[33].isSelected == true || cardOf36[33].isMatched == true) {
            cardImage33.image = UIImage(named: cardOf36[33].name)
        }
        if(cardOf36[34].isSelected == true || cardOf36[34].isMatched == true) {
            cardImage34.image = UIImage(named: cardOf36[34].name)
        }
        if(cardOf36[35].isSelected == true || cardOf36[35].isMatched == true) {
            cardImage35.image = UIImage(named: cardOf36[35].name)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        memoryBrain.generateCards36()
        cardOf36 = memoryBrain.getCards()
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
