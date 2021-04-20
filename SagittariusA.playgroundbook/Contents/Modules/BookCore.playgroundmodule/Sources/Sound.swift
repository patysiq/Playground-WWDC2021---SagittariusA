//
//  Sound.swift
//  BookCore
//
//  Created by PATRICIA S SIQUEIRA on 16/04/21.
//
import Foundation
import AVFoundation

public class Sounds {
    
    static var audioPlayer: AVAudioPlayer?
    
        public static func playAudio() {
            do {
                let audioSession = AVAudioSession.sharedInstance()
                try audioSession.setCategory(.ambient)
                try audioSession.setActive(true)
                
                guard let url = Bundle.main.url(forResource: "Serenity_David_Renda", withExtension: "mp3") else {return}
                Sounds.audioPlayer = try? AVAudioPlayer(contentsOf: url)
                Sounds.audioPlayer?.numberOfLoops = -1
                Sounds.audioPlayer?.prepareToPlay()
                Sounds.audioPlayer?.volume = 0.4
                Sounds.audioPlayer?.play()
            } catch {
                print("Failed to set audio session category.")
            }
        }
        
        public static func audioFinish() {
            Sounds.audioPlayer?.stop()
           }
}
