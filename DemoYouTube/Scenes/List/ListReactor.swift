//
//  ListReactor.swift
//  DemoYouTube
//
//  Created by Andrey Raevnev on 05.11.2019.
//  Copyright © 2019 Andrey Raevnev. All rights reserved.
//

import RxSwift

class ListReactor: BaseReactor, FullSceneReactor {

    typealias Coordinator = ListCoordinator
    typealias Interactor = ListInteractor

    enum Action {
        case loadData
    }

    enum Mutation {
        case setBusy(Bool)
        case setVideos([Video])
    }

    struct State {
        var isBusy = false
        var isEmpty = false
        var sections: [VideoSection] = []
    }

    let initialState = State()
    
    func mutate(action: Action) -> Observable<Mutation> {
        switch action {
        case .loadData:
            loadData()
//            var videos = [Video]()
//            videos.append(.init(title: "Video 1"))
//            videos.append(.init(title: "Video 2"))
//            videos.append(.init(title: "Video 3"))
//            videos.append(.init(title: "Video 4"))
//            videos.append(.init(title: "Video 5"))
//            videos.append(.init(title: "Video 6"))
//
//            make(.setVideos(videos))
//            break
        }
        return .empty()
    }

    func reduce(state: State, mutation: Mutation) -> State {
        var state = state

        switch mutation {
        case .setBusy(let val): state.isBusy = val
        case .setVideos(let videos):
            state.sections = [VideoSection(items: videos)]
        }
        return state
    }
}

fileprivate extension ListReactor {

    func loadData() {
        interact(interactor.videos(),
                 complete: ListReactor.dataLoaded,
                 error: ListReactor.dataLoadFailed,
                 inProgress: Mutation.setBusy)
    }
    
    func dataLoaded(data: [Video]) {
       make(.setVideos(data))
    }
       
    func dataLoadFailed(_ error: Error) {
//           coordinator.show(.alert, title: nil, message: "Ошибка при загрузке заявок", items: .ok)
    }
}
