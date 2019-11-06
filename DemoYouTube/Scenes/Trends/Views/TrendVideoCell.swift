//
//  VideoCell.swift
//  DemoYouTube
//
//  Created by Andrey Raevnev on 05.11.2019.
//  Copyright © 2019 Andrey Raevnev. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
import Kingfisher

extension Reactive where Base: TrendVideoCell {
    var tapChannel: Observable<Void> { return base.detailView.imageButton.rx.tap.mapToVoid() }
}

class TrendVideoCell: UICollectionViewCell, Reusable {
 
    var disposeBag = DisposeBag()

    static var size: CGSize {
        let width = UIScreen.main.bounds.width
        let heightThubnail = width * 9 / 16
        let height = heightThubnail + 12 + DetailView.height + 12
        return .init(width: width, height: height)
    }
    
    let thumbnailImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.backgroundColor = UIColor(white: 0.5, alpha: 0.5)
        imageView.clipsToBounds = true
        return imageView
    }()
    
    let detailView = DetailView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViewsAndConstraints()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupViewsAndConstraints() {
        contentView.backgroundColor = UIColor.pallete.background
        
        let separatorView = SeparatorView()
        contentView.add(subviews: thumbnailImageView, detailView, separatorView)
        
        let heightThubnail = frame.width * 9 / 16
        
        thumbnailImageView.snp.makeConstraints { (make) in
            make.top.left.right.equalToSuperview()
            make.height.equalTo(heightThubnail)
        }
        
        detailView.snp.makeConstraints { (make) in
            make.top.equalTo(thumbnailImageView.snp.bottom).offset(12)
            make.left.right.equalToSuperview().inset(16)
        }
        
        separatorView.snp.makeConstraints { (make) in
            make.left.right.bottom.equalToSuperview()
        }
        
    }
    
    func set(data video: Video) {
        detailView.set(data: .init(video: video))
        
        let url = URL(string: video.thumbnails.standard)
        thumbnailImageView.kf.setImage(with: url)
    }
    
}
