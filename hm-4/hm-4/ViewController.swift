//
//  ViewController.swift
//  hm-4
//
//  Created by Abdullah Albakeet on 10/11/20.
//  Copyright © 2020 Abdullah Albakeet. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {
    @IBOutlet weak var imageSong: UIImageView!
    @IBOutlet weak var songLabel: UILabel!
    @IBOutlet weak var singerLabel: UILabel!
    @IBOutlet weak var playButton: UIButton!
    var artis: String!
    var song: Song!
    var player: AVAudioPlayer?
    override func viewDidLoad() {
        super.viewDidLoad()
        imageSong.image = UIImage.init(named: song.imageName)
        songLabel.text = song.name
        singerLabel.text = artis
        imageSong.layer.cornerRadius = 10
        
        // Do any additional setup after loading the view.
    }
    @IBAction func back(_ sender: UIButton) {
    }
    @IBAction func paly(_ sender: UIButton) {
        if let player = player, player.isPlaying {
            playButton.setImage(UIImage(systemName: "play.circle.fill"), for: .normal)
            player.stop()
        }
        else {
            let urlString = Bundle.main.path(forResource: song.musicName, ofType: "mp3")
             playButton.setImage(UIImage(systemName: "pause.circle.fill"), for: .normal)
            
            do {
              try AVAudioSession.sharedInstance().setMode(.default)
                try AVAudioSession.sharedInstance().setActive(true, options: .notifyOthersOnDeactivation)
                guard let urlString = urlString else {
                    return
                }
                
                player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: urlString))
                guard let player = player else {
                    return
                }
                player.play()
            }
            
            catch {
                print("something went wrong")
            }
            
        }
        
    }
    @IBAction func ford(_ sender: UIButton) {
    }

}

