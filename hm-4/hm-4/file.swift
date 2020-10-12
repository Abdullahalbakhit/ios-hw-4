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
    .init(name: "eminem", imageName: "mnm", songs: mnmSong),
    .init(name: "justin bieber", imageName: "justin", songs: justinBeber),
    .init(name: "areana grande", imageName: "areana", songs: areanaGrande),
    .init(name: "juis world", imageName: "Juis World", songs: juis)
    
]

var mnmSong: [Song] = [
.init(name: "Rap God", imageName: "rapGod", musicName: "rapgodSong")
]
var justinBeber: [Song] = [
.init(name: "Sorry", imageName: "sorry", musicName: "sorrySong")
]
var areanaGrande: [Song] = [
.init(name: "Thank you ,Next", imageName: "thanku", musicName: "thankuSong")
]
var juis: [Song] = [
.init(name: "Lucid Dream", imageName: "lucid dream", musicName: "lucidDream")
]

