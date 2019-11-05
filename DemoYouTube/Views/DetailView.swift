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

extension Reactive where Base: DetailView {
//    var tap: Observable<Void> { return base._tapObservable }
    
//    var data: Binder<Channel> {
//        return Binder(self.base) { el, val in el.channel = val }
//    }
}

class DetailView: UIView {
    
    static let height: CGFloat = 44 + 32
    
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
    
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 22
        imageView.layer.masksToBounds = true
        imageView.backgroundColor = UIColor(white: 0.5, alpha: 0.5)
        return imageView
    }()
    
    let titleLabel = UILabel(font: .systemFont(ofSize: 16), textColor: .black, numberOfLines: 1)
    let subTitleLabel = UILabel(font: .systemFont(ofSize: 14), textColor: .lightGray, numberOfLines: 1)
    
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
        backgroundColor = UIColor.white
//        layer.masksToBounds = true
        
        add(subviews: imageView, titlesContainer)
        titlesContainer.add(subviews: titleLabel, subTitleLabel)
        
        imageView.snp.makeConstraints { make in
            make.left.centerY.equalToSuperview()
            make.width.height.equalTo(config.showImage ? 44 : 0)
        }

        titlesContainer.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.left.equalTo(imageView.snp.right).offset(config.showImage ? 12 : 0)
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
        imageView.kf.setImage(with: url)
    }
    
    public func clear() {
        imageView.image = nil
        titleLabel.text = nil
        subTitleLabel.text = nil
    }
    
}
