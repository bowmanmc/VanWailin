//
//  HomeViewController.swift
//  VanWailin
//
//  Created by Michael Bowman on 3/18/18.
//  Copyright © 2018 Heavy Decibels. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onButtonClickSettings(_ sender: UIButton) {
        performSegue(withIdentifier: "SegueToSettingsView", sender: self)
    }

    @IBAction func onButtonClickAbout(_ sender: UIButton) {
        performSegue(withIdentifier: "SegueToAboutView", sender: self)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
