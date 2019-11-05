//
//  BaseVC.swift
//  DemoYouTube
//
//  Created by Andrey Raevnev on 05.11.2019.
//  Copyright © 2019 Andrey Raevnev. All rights reserved.
//

import RxSwift

open class BaseVC: UIViewController {
    
    open var disposeBag = DisposeBag()

    override open func viewDidLoad() {
        super.viewDidLoad()
        setupViewAndConstraints()
    }

    open func setupViewAndConstraints() {
        
    }
    
    public init() {
        super.init(nibName: nil, bundle: nil)
    }

    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc open func popAnimated() {
        navigationController?.popViewController(animated: true)
    }
}
