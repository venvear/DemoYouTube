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

public class VideoCell: UITableViewCell, Reusable {
 
    public lazy var titleLabel: UILabel = {
        let label = UILabel()
//        label.numberOfLines = config.titleLines
//        label.stylize(as: .semibold17Black)
        return label
    }()
    
    public override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViewsAndConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViewsAndConstraints() {
        contentView.addSubview(titleLabel)
//        contentView.backgroundColor = UIColor.pallete.background
        
        titleLabel.snp.makeConstraints { (make) in
            make.left.top.right.equalToSuperview().inset(16)
//            make.top.bottom.equalToSuperview()
        }
        
//        bottomLineView.snp.makeConstraints { make in
//            make.left.right.bottom.equalToSuperview()
//        }
//
//        if showMoreButton {
//            contentView.add(subviews: moreButton)
//
//            instrumentView.snp.makeConstraints { (make) in
//                make.right.equalTo(moreButton.snp.left)
//            }
//
//            moreButton.snp.makeConstraints { make in
//                make.right.equalToSuperview()
//                make.width.equalTo(31)
//                make.top.equalTo(instrumentView.snp.top)
//                make.bottom.equalTo(instrumentView.snp.bottom)
//                make.centerY.equalToSuperview()
//            }
//
//            moreButton.extendHitTestAreaToMinVertically = true
//            moreButton.extendHitTestAreaToMinHorizontally = true
//        } else {
//            instrumentView.snp.makeConstraints { (make) in
//                make.right.equalToSuperview().inset(16)
//            }
//        }
    }
    
    func set(data video: Video) {
        titleLabel.text = video.title
    }
    
}
