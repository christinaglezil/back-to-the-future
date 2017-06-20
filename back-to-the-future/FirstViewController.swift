//
//  FirstViewController.swift
//  back-to-the-future
//
//  Created by Christina Glezil on 6/18/17.
//  Copyright © 2017 Christina Glezil. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let year = Utilities().GetCurrentYear()
        
        label1.text = Utilities().GetLetterAtIndex(str: year, location: 0)
        label2.text = Utilities().GetLetterAtIndex(str: year, location: 1)
        label3.text = Utilities().GetLetterAtIndex(str: year, location: 2)
        label4.text = Utilities().GetLetterAtIndex(str: year, location: 3)
        
        self.timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(FirstViewController.Tick), userInfo: nil, repeats: true)
        
  }
    
    func Tick(){
        timeLabel.text = Utilities().GetCurrentTime()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

