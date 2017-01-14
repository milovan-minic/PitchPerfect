//
//  ViewController.swift
//  PitchPerfect
//
//  Created by iosakademija on 1/13/17.
//  Copyright © 2017 No Organization. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordingLabel: UILabel!
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var stopRecordingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("viewDidLoad was called")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear is called")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordAudio(_ sender: Any) {
        print("Record Button was pressed!")
        recordingLabel.text = "Recording in Progress"
    }

    @IBAction func stopRecordingAudio(_ sender: Any) {
        print("Stop recording button was pressed!")
        recordingLabel.text = "Tap to record"
    }
}

