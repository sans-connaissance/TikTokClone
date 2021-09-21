//
//  Video.swift
//  TikTokClone
//
//  Created by David Malicke on 9/21/21.
//

import SwiftUI
import AVKit

struct Video: Identifiable {
    
    var id: Int
    var player: AVPlayer
    var replay: Bool
    
}
