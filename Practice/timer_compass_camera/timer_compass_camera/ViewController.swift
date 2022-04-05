//
//  ViewController.swift
//  timer_compass_camera
//
//  Created by 이유진 on 2020/12/25.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var progressbar: UIProgressView!
    
    var player: AVAudioPlayer?
    
    let times = 10
    
    var timer = Timer()
    var totaltime = 0
    var secondsPassed = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        progressbar.progress = 0
        playSound()
    }
    
    @IBAction func startTimer(_ sender: Any) {
        timer.invalidate()
        
        totaltime = times
        
        progressbar.progress = 0.0
        secondsPassed = 0
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer() {
        
        if secondsPassed < totaltime {
            secondsPassed += 1
            progressbar.progress = Float(secondsPassed) / Float(totaltime)
        } else {
            
            timer.invalidate()
            
        }
        
    }
    
    func playSound() {

    let url = Bundle.main.url(forResource: "19th Floor - Bobby Richards" , withExtension: "mp3")

        player = try! AVAudioPlayer(contentsOf: url!)

    player?.play()

     

    }

    
}

