//
//  Scales.swift
//  VanWailin
//
//  Created by Michael Bowman on 3/12/18.
//  Copyright © 2018 Heavy Decibels. All rights reserved.
//

import Foundation


struct Scales {
    struct G_Major {
        static let name:String = "G Major"
        static let notes:Array<Note> = [G, A, B, C, D, E, F_SHARP]
    }

    struct G_Major_Pentatonic {
        let name:String = "G Major Pentatonic"
        let notes:Array<Note> = [G, A, B, D, E]
    }

    struct G_Minor {
        let name = "G Minor"
        let notes = [G, A, B_FLAT, C, D, E_FLAT, F]
    }

    struct G_Minor_Pentatonic {
        let name = "G Minor Pentatonic"
        let notes = [G, B_FLAT, C, D, F]
    }
}
