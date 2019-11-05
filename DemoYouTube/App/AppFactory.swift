//
//  AppFactory.swift
//  DemoYouTube
//
//  Created by Andrey Raevnev on 05.11.2019.
//  Copyright © 2019 Andrey Raevnev. All rights reserved.
//

import UIKit

class DefaultFactory: AppFactoryType { }

protocol AppFactoryType: class {
    func tabs() -> Scene
    func trends() -> Scene
    func videoDetail(_ video: Video) -> Scene
}

extension AppFactoryType {

    func tabs() -> Scene {
        
        func createTab(_ vc: Scene, _ title: String, _ image: UIImage?) -> UINavigationController {
            let nc = UINavigationController(rootViewController: vc)
//            nc.interactivePopGestureRecognizer?.delegate = delegate
//            nc.interactivePopGestureRecognizer?.isEnabled = true
//            nc.delegate = navDelegate
//            nc.isNavigationBarHidden = true

            nc.tabBarItem = UITabBarItem(title: title, image: image, selectedImage: image)
            return nc
        }
        
        let trendsScene = App.shared.factory.trends()
        let trendsTab = createTab(trendsScene, "Тренды", UIImage.app(.trends))

        let searchScene = App.shared.factory.trends()
        let searchTab = createTab(searchScene, "Поиск", UIImage.app(.search))

//        let favoritesScene = App.shared.factory.trends()
//        let favoritesTab = createTab(favoritesScene, "Избранное", UIImage.app(.favorites))

        
        let tabVC = UITabBarController()
        tabVC.setViewControllers([trendsTab, searchTab], animated: false)
        
//        tabVC.tabBar.tintColor = .black
        tabVC.tabBar.isTranslucent = false
        
//        tabVC.tabBar.tintColor = UIColor.pallete.azul
//        tabVC.tabBar.backgroundImage = UIImage.by(color: UIColor.pallete.background)
//        tabVC.view.backgroundColor = UIColor.pallete.background
        
        return tabVC
    }
    
    
    
    func trends() -> Scene {
        let scene = TrendsVC()
        let reactor = TrendsReactor()
        reactor.inject(interactor: TrendsInteractor(), coordinator: TrendsCoordinator(scene: scene))
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
}
