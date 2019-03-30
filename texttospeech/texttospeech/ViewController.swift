//
//  ViewController.swift
//  texttospeech
//
//  Created by ADG RIT 3 on 30/03/19.
//  Copyright © 2019 ADG RIT 3. All rights reserved.
//

import UIKit
import AVFoundation

class ViewControllerA: UIViewController {

    override func viewDidLoad() {
        print("Inside viewDidLoad")
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        print("Inside View did appear")
    }
    @IBOutlet weak var label_A: UILabel!
    
    @IBAction func button_A(_ sender: Any) {
        print("Hey Sexy")
        let text = text_A.text!
        speakText(string: text)
        
    }
    
    @IBOutlet weak var text_A: UITextField!
    
    
    @IBOutlet weak var button_B: UIButton!
    
    
    func speakText(string: String){
        let utterance = AVSpeechUtterance(string: string)
        utterance.rate = 0.3
        utterance.voice = AVSpeechSynthesisVoice(language: "en-GB")
        
        
        let synt = AVSpeechSynthesizer()
        synt.speak(utterance)
        
        
        
        
    }
    
    
}

