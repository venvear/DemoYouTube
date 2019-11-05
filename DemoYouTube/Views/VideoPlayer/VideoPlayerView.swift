//
//  VideoPlayerView.swift
//  DemoYouTube
//
//  Created by Andrey Raevnev on 06.11.2019.
//  Copyright © 2019 Andrey Raevnev. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

extension Reactive where Base: VideoPlayerView {
    var tapClose: Observable<Void> { return base._tapObservable }
}

class VideoPlayerView: UIView {
    
    internal var tapObservable = PublishSubject<Void>()
    fileprivate lazy var _tapObservable = { tapObservable.asObservable() }()
    
    let videoPlayer: YouTubePlayerView = {
        let playerView = YouTubePlayerView(frame: .zero)
        return playerView
    }()
    
    let activityIndicatorView: UIActivityIndicatorView = {
        let aiv = UIActivityIndicatorView(style: .whiteLarge)
        aiv.startAnimating()
        return aiv
    }()
    
    lazy var pausePlayButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage.app(.pause), for: .normal)
        button.tintColor = .white
        button.isHidden = true
        
        button.addTarget(self, action: #selector(handlePause), for: .touchUpInside)
        return button
    }()
    
    lazy var closeButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage.app(.cancel), for: .normal)
        button.tintColor = .white
        
        button.addTarget(self, action: #selector(handleClose), for: .touchUpInside)
        return button
    }()
    
    var isPlaying = false
    
    @objc func handlePause() {
        if isPlaying {
            videoPlayer.pause()
            pausePlayButton.setImage(UIImage.app(.play), for: .normal)
        } else {
            videoPlayer.play()
            pausePlayButton.setImage(UIImage.app(.pause), for: .normal)
        }
        
        print("handlePause getCurrentTime = \(videoPlayer.getCurrentTime() ?? "")")
        
        isPlaying = !isPlaying
    }
    
    var willClose = false
    
    @objc func handleClose() {
        print("handleClose")
        willClose = true
        
        tapObservable.onNext(())
    }
    
    lazy var controlsContainerView: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        
        view.isUserInteractionEnabled = true
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTouch)))
        return view
    }()
    
    let videoLengthLabel: UILabel = {
        let label = UILabel()
        label.text = "00:00"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 13)
        label.textAlignment = .right
        return label
    }()
    
    let currentTimeLabel: UILabel = {
        let label = UILabel()
        label.text = "00:00"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 13)
        return label
    }()
    
    lazy var videoSlider: UISlider = {
        let slider = UISlider()
        slider.minimumTrackTintColor = .red
        slider.maximumTrackTintColor = .white
        slider.setThumbImage(UIImage.app(.thumb), for: .normal)
        
        slider.addTarget(self, action: #selector(handleSliderChange), for: .valueChanged)
        
        return slider
    }()
    
    @objc func handleSliderChange() {
        print(videoSlider.value)
        
        let seekTime = videoSlider.value * duration
        videoPlayer.seekTo(seekTime, seekAhead: true)
        
        updateCurrentTime(seekTime)
    }
    
    lazy var touchView: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        
        view.isUserInteractionEnabled = true
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTouch)))
        return view
    }()
    
    @objc func handleTouch() {
        print("handleTouch")
        
        controlsContainerView.isHidden = !controlsContainerView.isHidden
    }
    
    var duration: Float {
        guard let durationString = videoPlayer.getDuration(), let duration = Float(durationString) else {
            return 0
        }
        return duration
    }
    
    var currentTime: Float {
        guard let currentTimeString = videoPlayer.getCurrentTime(), let currentTime = Float(currentTimeString) else {
            return 0
        }
        return currentTime + 1
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        setupViews()
    }
    
    fileprivate func setupViews() {
        backgroundColor = .black
        
        setupPlayerView()
        setupGradientLayer()

        add(subviews: touchView, controlsContainerView)
        
        touchView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        controlsContainerView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        controlsContainerView.add(subviews: activityIndicatorView, pausePlayButton, closeButton)
        
        activityIndicatorView.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        
        pausePlayButton.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.height.equalTo(50)
        }
        
        closeButton.snp.makeConstraints { make in
            make.top.right.equalToSuperview().inset(12)
            make.width.height.equalTo(22)
        }
        
        let stackView = UIStackView(.horizontal, spacing: 8, distribution: .fill, alignment: .fill,
                                    views: [currentTimeLabel, videoSlider, videoLengthLabel])
        
        controlsContainerView.add(subviews: stackView)
        
        stackView.snp.makeConstraints { make in
            make.left.right.bottom.equalToSuperview().inset(8)
        }
    }
    
    fileprivate func setupGradientLayer() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = [UIColor.clear.cgColor, UIColor.black.cgColor]
        gradientLayer.locations = [0.7, 1.2]
        controlsContainerView.layer.addSublayer(gradientLayer)
    }
    
    fileprivate func setupPlayerView() {
        videoPlayer.frame = frame
        addSubview(videoPlayer)
        
        videoPlayer.delegate = self
    }
    
    func loadVideo(_ videoId: String) {
        videoPlayer.playerVars = [
            "autoplay": "1" as AnyObject,
            "playsinline": "1" as AnyObject,
            "controls": "0" as AnyObject,
            "rel": "0" as AnyObject,
            "modestbranding": "0" as AnyObject,
            "iv_load_policy": "3" as AnyObject,
            "showinfo": "0" as AnyObject
        ]
        
        videoPlayer.loadVideoID(videoId)
    }
    
    fileprivate func play() {
        activityIndicatorView.stopAnimating()
        controlsContainerView.backgroundColor = .clear
        pausePlayButton.isHidden = false
        closeButton.isHidden = false
        isPlaying = true
        
        updateCurrentTime(currentTime)
        let seconds = duration
        let secondsText = Int(seconds) % 60
        let minutesText = String(format: "%02d", Int(seconds) / 60)
        videoLengthLabel.text = "\(minutesText):\(secondsText)"
        
        videoPlayer.play()
    }
    
    fileprivate func didPlay() {
        controlsContainerView.isHidden = true
    }
    
    fileprivate func didPause() {
        controlsContainerView.isHidden = false
    }
    
    var myTimer: Timer? = nil
    
    fileprivate func startTimer() {
        print("startTimer")
        if let timer = myTimer {
            timer.invalidate()
            myTimer = nil
        }
        
        timerTick()
        myTimer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector:  #selector(timerTick), userInfo: nil, repeats: true)
    }
    
    fileprivate func stopTimer() {
        print("stopTimer")
        timerTick()
        
        myTimer?.invalidate()
        myTimer = nil
    }
    
    @objc func timerTick() {
        let seconds = currentTime
        let value = seconds / duration
        videoSlider.value = value
        
        print("timerTick seconds = \(seconds)")
        
        updateCurrentTime(seconds)
    }
    
    func updateCurrentTime(_ time: Float) {
        let seconds = time
        //        print("updateCurrentTime seconds = \(seconds)")
        
        let secondsString = String(format: "%02d", Int(seconds.truncatingRemainder(dividingBy: 60)))
        let minutesString = String(format: "%02d", Int(seconds / 60))
        
        currentTimeLabel.text = "\(minutesString):\(secondsString)"
    }
}

extension VideoPlayerView: YouTubePlayerDelegate {
    
    func playerReady(_ videoPlayer: YouTubePlayerView) {
        print("playerReady playerState = \(videoPlayer.playerState)")
        
        if videoPlayer.playerState == .Unstarted {
            if willClose { return }
            play()
        }
    }
    
    func playerStateChanged(_ videoPlayer: YouTubePlayerView, playerState: YouTubePlayerState) {
        print("playerStateChanged playerState = \(playerState)")
        
        switch playerState {
        case .Playing:
            didPlay()
            startTimer()
        case .Paused:
            didPause()
            stopTimer()
        default:
            let _ = 1
        }
    }
    
    func playerQualityChanged(_ videoPlayer: YouTubePlayerView, playbackQuality: YouTubePlaybackQuality) {
        print("playerQualityChanged playbackQuality = \(playbackQuality)")
        
    }
    
}




