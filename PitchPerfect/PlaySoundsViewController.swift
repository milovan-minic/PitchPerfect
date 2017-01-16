//
//  PlaySoundsViewController.swift
//  PitchPerfect
//
//  Created by iosakademija on 1/16/17.
//  Copyright © 2017 No Organization. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {
    
    @IBOutlet weak var slowButton: UIButton!
    @IBOutlet weak var fastButton: UIButton!
    @IBOutlet weak var highPitchButton: UIButton!
    @IBOutlet weak var lowPitchButton: UIButton!
    @IBOutlet weak var echoButton: UIButton!
    @IBOutlet weak var reverbButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    
    var recordedAudioURL: URL!
    var audioFile: AVAudioFile!
    var audioEngine: AVAudioEngine!
    var audioPlayerNode: AVAudioPlayerNode!
    var stopTimer: Timer!
    
    enum buttonType: Int {
        case slow = 0
        case fast
        case highPitch
        case lowPitch
        case echo
        case reverb
    }
    
    @IBAction func playSoundForButton(_ sender: UIButton) {
        print("Play sound button pressed")
    }
    
    @IBAction func stopButtonPressed(_ sender: AnyObject) {
        print("Stop audio playback button pressed")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupAudio()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        configureUI(.notPlaying)
    }

}
