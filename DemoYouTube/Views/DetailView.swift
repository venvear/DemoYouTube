//
//  DetailView.swift
//  DemoYouTube
//
//  Created by Andrey Raevnev on 06.11.2019.
//  Copyright © 2019 Andrey Raevnev. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
import Kingfisher

class DetailView: UIView {
    
    static let height: CGFloat = 44
    
    struct Config {
        let showImage: Bool
        let subtitleOffset: CGFloat
        
        init(showImage: Bool = true, subtitleOffset: CGFloat = 4) {
            self.showImage = showImage
            self.subtitleOffset = subtitleOffset
        }
        
        static let `default` = DetailView.Config()
    }
    
    struct Data {
        let imageUrl: URL?
        let title: String
        let subtitle: String
    }
    
    let imageButton: UIButton = {
        let button = UIButton()
        button.contentMode = .scaleAspectFill
        button.layer.cornerRadius = 22
        button.layer.masksToBounds = true
        button.backgroundColor = UIColor(white: 0.5, alpha: 0.5)
        return button
    }()
    
    let titleLabel = UILabel(font: .systemFont(ofSize: 16), textColor: UIColor.pallete.black, numberOfLines: 1)
    let subTitleLabel = UILabel(font: .systemFont(ofSize: 14), textColor: UIColor.pallete.gray, numberOfLines: 1)
    
    let titlesContainer = UIView()
    
    private let config: DetailView.Config
    
    init(config: DetailView.Config = .default) {
        self.config = config
        super.init(frame: .zero)
        setupViewsAndConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) { fatalError() }
    
    override var intrinsicContentSize: CGSize {
        return .init(width: UIView.noIntrinsicMetric, height: DetailView.height)
    }
    
    private func setupViewsAndConstraints() {
        backgroundColor = UIColor.pallete.background
        
        add(subviews: imageButton, titlesContainer)
        titlesContainer.add(subviews: titleLabel, subTitleLabel)
        
        imageButton.snp.makeConstraints { make in
            make.left.centerY.equalToSuperview()
            make.width.height.equalTo(config.showImage ? 44 : 0)
        }

        titlesContainer.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.left.equalTo(imageButton.snp.right).offset(config.showImage ? 12 : 0)
            make.right.equalToSuperview()
        }

        titleLabel.snp.makeConstraints { make in
            make.top.left.right.equalToSuperview()
        }
        
        subTitleLabel.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(config.subtitleOffset)
            make.bottom.left.right.equalToSuperview()
        }
    }
    
    func set(data: Data) {
        titleLabel.text = data.title
        subTitleLabel.text = data.subtitle
        
        guard let url = data.imageUrl else { return }
        imageButton.kf.setImage(with: url, for: .normal)
    }
    
    public func clear() {
        imageButton.setImage(nil, for: .normal)
        titleLabel.text = nil
        subTitleLabel.text = nil
    }
    
}
