//
//  LupiVideoBackgroundView.swift
//  Lupi
//
//  Created by Tieda Wei on 2020-02-09.
//

import UIKit
import AVFoundation

@available(iOS 10.0, *)
public class LupiVideoBackgroundView: UIView {
    
    private var videoPlayer: AVQueuePlayer!
    private var videoPlayerLayer: AVPlayerLayer!
    private var playerLooper: AVPlayerLooper!
    
    private weak var parentView: UIView?
    
    public init(fileName: String, fileType: FileType = .mp4, isMuted: Bool = true, in parentView: UIView) throws {
        self.parentView = parentView
        super.init(frame: .zero)
        
        guard let path = Bundle.main.path(forResource: fileName, ofType: fileType.rawValue) else {
            throw LupiError.videoNotFound(name: fileName, type: fileType.rawValue)
        }
        
        setupUI()
        setupPlayer(path: path, isMuted: isMuted)
    }
    
    public init(url: URL, isMuted: Bool = true, in parentView: UIView) {
        self.parentView = parentView
        super.init(frame: .zero)
        
        setupUI()
        setupPlayer(url: url, isMuted: isMuted)
    }
    
    override public func layoutSubviews() {
        videoPlayerLayer.frame = frame
    }
    
    private func setupPlayer(url: URL, isMuted: Bool) {
        setupPlayerItem(url: url, isMuted: isMuted)
    }
    
    fileprivate func setupPlayer(path: String, isMuted: Bool) {
        let url = URL(fileURLWithPath: path)
        setupPlayer(url: url, isMuted: isMuted)
    }
    
    private func setupPlayerItem(url: URL, isMuted: Bool) {
        let playerItem = AVPlayerItem(url: url)
        
        videoPlayer = AVQueuePlayer(playerItem: playerItem)
        playerLooper = AVPlayerLooper(player: videoPlayer, templateItem: playerItem)
        
        videoPlayerLayer = AVPlayerLayer(player: videoPlayer)
        videoPlayerLayer.frame = parentView!.bounds
        videoPlayerLayer.videoGravity = .resizeAspectFill
        
        parentView?.layer.addSublayer(videoPlayerLayer)
        
        videoPlayer.isMuted = isMuted
        
        videoPlayer.play()
    }
    
    fileprivate func setupUI() {
        guard let parentView = parentView else {return}
        parentView.addSubview(self)
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: parentView.topAnchor),
            bottomAnchor.constraint(equalTo: parentView.bottomAnchor),
            leadingAnchor.constraint(equalTo: parentView.leadingAnchor),
            trailingAnchor.constraint(equalTo: parentView.trailingAnchor)
        ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

