//
//  Aliases.swift
//  DemoYouTube
//
//  Created by Andrey Raevnev on 05.11.2019.
//  Copyright © 2019 Andrey Raevnev. All rights reserved.
//

import ReactorKit

public typealias Scene = UIViewController
public typealias SceneView = View
public typealias SceneReactor = Reactor
public typealias FullSceneReactor = SceneReactor & Coordinatable & Interactable

extension Scene : AssociatedStore {}
