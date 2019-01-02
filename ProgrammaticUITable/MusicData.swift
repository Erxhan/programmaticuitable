//
//  MusicData.swift
//  ProgrammaticUITable
//
//  Created by Erxhan Selmani on 01/01/2019.
//  Copyright © 2019 Erxhan Selmani. All rights reserved.
//

import Foundation

class MusicData {
    
    let bandsList = [
        Info(image: "metallica", title: "Metallica"),
        Info(image: "slipknot", title: "Slipknot"),
        Info(image: "nirvana", title: "Nirvana"),
        Info(image: "acdc", title: "AC/DC"),
        Info(image: "system", title: "System of a Dawn")
    ]
    let songsList = [
        Info(image: "1", title: "The unforgiven"),
        Info(image: "2", title: "Snuffs"),
        Info(image: "3", title: "Smells like teen spirit"),
        Info(image: "4", title: "Back"),
        Info(image: "5", title: "Chop Suey"),
    ]
    
    func getBands() -> [Info] {
        return bandsList
    }
    
    func getSongs() -> [Info] {
        return songsList
    }
}
