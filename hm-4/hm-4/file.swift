//
//  File.swift
//  hm-4
//
//  Created by Abdullah Albakeet on 10/11/20.
//  Copyright © 2020 Abdullah Albakeet. All rights reserved.
//

import Foundation

struct Song {
    var name: String
    var imageName: String
    var musicName: String
}

struct Artist {
    var name: String
    var imageName: String
    var songs: [Song]
}

var artistAry: [Artist] = [
    .init(name: "eminem", imageName: "mnm", songs: [Song(name: "Rap God", imageName: "rapGod", musicName: "rapgodSong")]),
    .init(name: "justin bieber", imageName: "justin", songs: [Song(name: "Sorry", imageName: "sorry", musicName: "sorrySong")]),
    .init(name: "areana grande", imageName: "areana", songs: [Song(name: "Thank you ,Next", imageName: "thanku", musicName: "thankuSong")])
]

