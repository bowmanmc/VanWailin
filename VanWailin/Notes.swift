//
//  Notes.swift
//  VanWailin
//
//  Created by Michael Bowman on 3/12/18.
//  Copyright © 2018 Heavy Decibels. All rights reserved.
//

import Foundation


struct Note {
    var name: String
    var frequency: Double
}

let C = Note(name: "C", frequency: 16.35)

let C_SHARP = Note(name: "C♯", frequency: 17.32)
let D_FLAT = Note(name: "D♭", frequency: 17.32)

let D = Note(name: "D", frequency: 18.35)

let D_SHARP = Note(name: "D♯", frequency: 19.45)
let E_FLAT = Note(name: "E♭", frequency: 19.45)

let E = Note(name: "E", frequency: 20.6)

let F = Note(name: "F", frequency: 21.83)

let F_SHARP = Note(name: "F♯", frequency: 23.12)
let G_FLAT = Note(name: "G♭", frequency: 23.12)

let G = Note(name: "G", frequency: 24.5)

let G_SHARP = Note(name: "G♯", frequency: 25.96)
let A_FLAT = Note(name: "A♭", frequency: 25.96)

let A = Note(name: "A", frequency: 27.5)

let A_SHARP = Note(name: "A♯", frequency: 29.14)
let B_FLAT = Note(name: "B♭", frequency: 29.14)

let B = Note(name: "B", frequency: 30.87)
