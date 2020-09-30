//
//  ViewController.swift
//  MemoryGame
//
//  Created by IOS on 22/09/20.
//  Copyright © 2020 iOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController, backDelegate16, backDelegate36 {

    @IBOutlet weak var labelHighScore16: UILabel!
    @IBOutlet weak var labelHighScore36: UILabel!
    //semakin rendah stepnya, semakin bagus scorenya, karena ini 10000 dibagi jumlah langkah
    func getScore16(data: Int) {
        let currentHighScore = Int(labelHighScore16.text!)!
        if data >= currentHighScore {
            labelHighScore16.text = "\(data)"
        }
    }
    func getScore36(data: Int) {
        let currentHighScore = Int(labelHighScore36.text!)!
        if data >= currentHighScore {
            labelHighScore36.text = "\(data)"
        }
    }
    @IBAction func buttonFour(_ sender: UIButton) {
        print("Button 4x4 Clicked!")
    }
    @IBAction func buttonSix(_ sender: UIButton) {
        print("Button 6x6 Clicked!")
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toPageFour" {
            let vc4 = segue.destination as! ViewControllerFour
            vc4.delegate = self
        }
        else if segue.identifier == "toPageSix" {
            let vc6 = segue.destination as! ViewControllerFour
            vc6.delegate = self
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

