//
//  AppDelegate.swift
//  DemoYouTube
//
//  Created by Andrey Raevnev on 05.11.2019.
//  Copyright © 2019 Andrey Raevnev. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow? = UIWindow()
    
    private let youTubeConfigurator = YouTubeConfigurator(plugins: [Plugins.logger],
                                                      url: "https://www.googleapis.com/youtube/v3",
                                                      apiKey: "AIzaSyDXLxioNqUSjWuXVvbtby9j3A8x_zV1iKI")
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        ConfiguratorContainer.instanceLazyInit.register(youTubeConfigurator)
        
        let vc = App.shared.factory.tabs()
        
        window?.rootViewController = vc
        window?.makeKeyAndVisible()
        
        return true
    }

}

