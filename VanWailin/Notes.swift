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
    var flatName: String
    var frequency: Double
}

let C = Note(name: "C", flatName: "C", frequency: 16.35)
let C_SHARP = Note(name: "C♯", flatName: "D♭", frequency: 17.32)

let D_FLAT = C_SHARP
let D = Note(name: "D", flatName: "D", frequency: 18.35)
let D_SHARP = Note(name: "D♯", flatName: "E♭", frequency: 19.45)

let E_FLAT = D_SHARP
let E = Note(name: "E", flatName: "E", frequency: 20.6)

let F = Note(name: "F", flatName: "F", frequency: 21.83)
let F_SHARP = Note(name: "F♯", flatName: "G♭", frequency: 23.12)

let G_FLAT = F_SHARP
let G = Note(name: "G", flatName: "G", frequency: 24.5)
let G_SHARP = Note(name: "G♯", flatName: "A♭", frequency: 25.96)

let A_FLAT = G_SHARP
let A = Note(name: "A", flatName: "A", frequency: 27.5)
let A_SHARP = Note(name: "A♯", flatName: "B♭", frequency: 29.14)

let B_FLAT = A_SHARP
let B = Note(name: "B", flatName: "B", frequency: 30.87)
