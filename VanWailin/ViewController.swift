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

    @IBOutlet private var lblCurrentScale: UILabel!
    @IBOutlet private var lblCurrentNote: UILabel!
    @IBOutlet private var lblCurrentFrequency: UILabel!
    @IBOutlet private var lblFrequency: UILabel!
    @IBOutlet private var lblAmplitude: UILabel!

    var mic: AKMicrophone!
    var tracker: AKFrequencyTracker!
    var silence: AKBooster!

    var currentIndex:Int = 0
    var scale: Array<Note>!

    override func viewDidLoad() {
        super.viewDidLoad()

        AKSettings.audioInputEnabled = true
        mic = AKMicrophone()
        tracker = AKFrequencyTracker(mic)
        silence = AKBooster(tracker, gain: 0)

        currentIndex = 0
        scale = Scales.G_Major.notes
        updateLabels()
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

    func updateLabels() {
        lblCurrentScale.text = Scales.G_Major.name
        lblCurrentNote.text = scale[currentIndex].name
        lblCurrentFrequency.text = String(format: "%0.1f", scale[currentIndex].frequency)
    }

    @objc func updateUI() {
        if (tracker.amplitude > 0.05) {

            lblFrequency.text = String(format: "%0.1f", tracker.frequency)
            var frequency = Double(tracker.frequency)
            let targetFrequency = scale[currentIndex].frequency
            let fudge = 0.5
            while (frequency > (targetFrequency + fudge)) {
                frequency /= 2.0
            }

            if (abs(frequency - targetFrequency) < fudge) {
                print("Hit it: \(frequency) - \(targetFrequency)")
                currentIndex = (currentIndex + 1) % scale.count
                updateLabels()
            }

//            if (abs(frequency - scale[currentIndex].frequency) < 5) {
//                currentIndex += 1
//                updateLabels()
//            }



//            while frequency > Float(noteFrequencies[noteFrequencies.count - 1]) {
//                frequency /= 2.0
//            }
//            while frequency < Float(noteFrequencies[0]) {
//                frequency *= 2.0
//            }
//
//            var minDistance: Float = 10_000.0
//            var index = 0
//
//            for i in 0..<noteFrequencies.count {
//                let distance = fabsf(Float(noteFrequencies[i]) - frequency)
//                if distance < minDistance {
//                    index = i
//                    minDistance = distance
//                }
//            }
//            let octave = Int(log2f(Float(tracker.frequency) / frequency))
//            lblNote.text = "\(noteNamesWithSharps[index])\(octave)"
        }
        lblAmplitude.text = String(format: "%0.2f", tracker.amplitude)
    }

}

