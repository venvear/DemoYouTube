//
//  VideoDetailReactor.swift
//  DemoYouTube
//
//  Created by Andrey Raevnev on 05.11.2019.
//  Copyright © 2019 Andrey Raevnev. All rights reserved.
//

import RxSwift

class VideoDetailReactor: BaseReactor, FullSceneReactor {

    typealias Coordinator = VideoDetailCoordinator
    typealias Interactor = VideoDetailInteractor

    enum Action {
        case loadData
        case tapClose
        case tapChannel
    }

    enum Mutation {
        case inProgressLoad(Bool)
        case dataLoaded(Video)
    }

    struct State {
        var inProgressLoad = false
        var video: Video
    }

    let initialState: State

    init(video: Video) {
        initialState = State(video: video)
        super.init()
    }
    
    func mutate(action: Action) -> Observable<Mutation> {
        switch action {
        case .loadData:
            loadData()
          
        case .tapClose:
            coordinator.close()
            
        case .tapChannel:
            coordinator.openChannel(currentState.video.channel)
        }
        return .empty()
    }

    func reduce(state: State, mutation: Mutation) -> State {
        var state = state

        switch mutation {
        case .inProgressLoad(let val): state.inProgressLoad = val
        case .dataLoaded(let video):
            state.video = video
        }
        return state
    }
}

fileprivate extension VideoDetailReactor {

    func loadData() {
//        interact(interactor.videos(),
//                 complete: TrendsReactor.dataReloaded,
//                 error: TrendsReactor.dataLoadFailed,
//                 inProgress: Mutation.inProgressLoad)
    }
    
    func dataReloaded(data: [Video]) {
//       make(.dataReloaded(data))
    }
       
    func dataLoadFailed(_ error: Error) {
//           coordinator.show(.alert, title: nil, message: "Ошибка при загрузке заявок", items: .ok)
    }
}
