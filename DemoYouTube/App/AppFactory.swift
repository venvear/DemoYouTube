//
//  AppFactory.swift
//  DemoYouTube
//
//  Created by Andrey Raevnev on 05.11.2019.
//  Copyright © 2019 Andrey Raevnev. All rights reserved.
//

import UIKit
import SafariServices

class DefaultFactory: AppFactoryType { }

protocol AppFactoryType: class {
    func tabs() -> Scene
    func trends() -> Scene
    func search() -> Scene
    func videoDetail(_ video: Video) -> Scene
    func channelDetail(_ channel: Channel) -> Scene?
}

extension AppFactoryType {

    func tabs() -> Scene {
        
        func createTab(_ vc: Scene, _ title: String, _ image: UIImage?) -> UINavigationController {
            let nc = UINavigationController(rootViewController: vc)
            nc.tabBarItem = UITabBarItem(title: title, image: image, selectedImage: image)
            return nc
        }
        
        let trendsScene = App.shared.factory.trends()
        let trendsTab = createTab(trendsScene, "Тренды", UIImage.app(.trends))

        let searchScene = App.shared.factory.search()
        let searchTab = createTab(searchScene, "Поиск", UIImage.app(.search))

        let tabVC = MainTabsVC()
        tabVC.setViewControllers([trendsTab, searchTab], animated: false)
        return tabVC
    }
    
    func trends() -> Scene {
        let scene = TrendsVC()
        let reactor = TrendsReactor()
        reactor.inject(interactor: TrendsInteractor(), coordinator: TrendsCoordinator(scene: scene))
        scene.inject(reactor)
        return scene
    }
    
    func search() -> Scene {
        let scene = SearchVC()
        let reactor = SearchReactor()
        reactor.inject(interactor: SearchInteractor(), coordinator: SearchCoordinator(scene: scene))
        scene.inject(reactor)
        return scene
    }
    
    func videoDetail(_ video: Video) -> Scene {
        let scene = VideoDetailVC()
        scene.hidesBottomBarWhenPushed = true
        let reactor = VideoDetailReactor(video: video)
        reactor.inject(interactor: VideoDetailInteractor(), coordinator: VideoDetailCoordinator(scene: scene))
        scene.inject(reactor)
        return scene
    }
    
    func channelDetail(_ channel: Channel) -> Scene? {
        guard let url = URL(string: "https://www.youtube.com/channel/\(channel.id)") else { return nil }
        
        return SFSafariViewController(url: url)
    }
}

class MainTabsVC: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateColors()
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        
        updateColors()
    }
    
    private func updateColors() {
        tabBar.tintColor = UIColor.systemBlue
        tabBar.backgroundImage = UIImage.by(color: UIColor.pallete.background)
        view.backgroundColor = UIColor.pallete.background
    }
}
