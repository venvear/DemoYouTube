//
//  SearchVideoCell.swift
//  DemoYouTube
//
//  Created by Andrey Raevnev on 06.11.2019.
//  Copyright © 2019 Andrey Raevnev. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
import Kingfisher

class SearchVideoCell: UICollectionViewCell, Reusable {
 
    var disposeBag = DisposeBag()

    static var size: CGSize {
        let width = UIScreen.main.bounds.width
        let widthThubnail = width / 2 - 8
        let heightThubnail = widthThubnail * 9 / 16
        let height = heightThubnail + 16
        return .init(width: width, height: height)
    }
    
    let thumbnailImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.backgroundColor = UIColor(white: 0.5, alpha: 0.5)
        imageView.clipsToBounds = true
        return imageView
    }()
    
    let titleLabel = UILabel(font: .systemFont(ofSize: 16), textColor: UIColor.pallete.black, numberOfLines: 3)
    let subTitleLabel = UILabel(font: .systemFont(ofSize: 14), textColor: UIColor.pallete.gray, numberOfLines: 2)
    
    let titlesContainer = UIView()
    
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
        contentView.add(subviews: thumbnailImageView, titlesContainer, separatorView)
        
        let width = frame.width
        let widthThubnail = width / 2 - 8
        let heightThubnail = widthThubnail * 9 / 16
        
        thumbnailImageView.snp.makeConstraints { (make) in
            make.top.bottom.left.equalToSuperview().inset(8)
            make.width.equalTo(widthThubnail)
            make.height.equalTo(heightThubnail)
        }
        
        titlesContainer.add(subviews: titleLabel, subTitleLabel)
        
        titlesContainer.snp.makeConstraints { make in
            make.left.equalTo(thumbnailImageView.snp.right).offset(8)
            make.top.bottom.right.equalToSuperview().inset(8)
        }

        titleLabel.snp.makeConstraints { make in
            make.top.left.right.equalToSuperview()
        }
        
        subTitleLabel.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(4)
            make.left.right.equalToSuperview()
            make.bottom.greaterThanOrEqualToSuperview()
        }
        
        separatorView.snp.makeConstraints { (make) in
            make.left.right.bottom.equalToSuperview()
        }
        
    }
    
    func set(data video: Video) {
        titleLabel.text = video.title
        subTitleLabel.text = "\(video.channel.title)\n\(video.statistics.views) просмотров"
        
        let url = URL(string: video.thumbnails.standard)
        thumbnailImageView.kf.setImage(with: url)
    }
    
}
