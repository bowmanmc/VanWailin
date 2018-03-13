//
//  ViewController.swift
//  VanWailin
//
//  Created by Michael Bowman on 3/12/18.
//  Copyright © 2018 Heavy Decibels. All rights reserved.
//
import AudioKit
import UIKit


class ViewController: UIViewController {

    @IBOutlet private var frequencyLabel: UILabel!
    @IBOutlet private var amplitudeLabel: UILabel!
    @IBOutlet private var noteNameWithSharpsLabel: UILabel!
    @IBOutlet private var noteNameWithFlatsLabel: UILabel!

    var mic: AKMicrophone!
    var tracker: AKFrequencyTracker!
    var silence: AKBooster!

    override func viewDidLoad() {
        super.viewDidLoad()

        AKSettings.audioInputEnabled = true
        mic = AKMicrophone()
        tracker = AKFrequencyTracker(mic)
        silence = AKBooster(tracker, gain: 0)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        AudioKit.output = silence
        do {
            try AudioKit.start()
        } catch {
            AKLog("AudioKit did not start!")
        }
        Timer.scheduledTimer(
            timeInterval: 0.1,
            target: self,
            selector: #selector(ViewController.updateUI),
            userInfo: nil,
            repeats: true
        )
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

