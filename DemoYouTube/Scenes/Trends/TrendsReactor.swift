//
//  ListReactor.swift
//  DemoYouTube
//
//  Created by Andrey Raevnev on 05.11.2019.
//  Copyright © 2019 Andrey Raevnev. All rights reserved.
//

import RxSwift

class TrendsReactor: BaseReactor, FullSceneReactor {

    typealias Coordinator = TrendsCoordinator
    typealias Interactor = TrendsInteractor

    enum Action {
        case loadData
        case loadMore
        case selected(IndexPath)
    }

    enum Mutation {
        case inProgressLoad(Bool)
        case inProgressLoadMore(Bool)
        
        case dataReloaded([Video])
        case moreDataLoaded([Video])
    }

    struct State {
        var inProgressLoad = false
        var inProgressLoadMore = false
        var inProgressFirstLoading: Bool { return inProgressLoad && firstLoading }
        var inProgressRefreshLoading: Bool { return inProgressLoad && !firstLoading }
        
        var firstLoading = false
        var isEmpty = false
        var sections: [VideoSection] = []
    }

    let initialState = State()
    
    func mutate(action: Action) -> Observable<Mutation> {
        switch action {
        case .loadData:
            reloadData()
            
        case .loadMore:
//            guard canLoadMore && currentState.inProgressLoadMore == false && currentState.endOfData == false else { break }
            loadMore()
            
        case .selected(let indexPath):
//            guard canSelectItem else { break }
            let video = currentState.sections[indexPath.section].items[indexPath.row]
            coordinator.openVideo(video)
        }
        return .empty()
    }

    func reduce(state: State, mutation: Mutation) -> State {
        var state = state

        switch mutation {
        case .inProgressLoad(let val): state.inProgressLoad = val
        case .inProgressLoadMore(let val): state.inProgressLoadMore = val
            
        case .dataReloaded(let videos):
//            var items = items
//            if let maxCount = maxCount {
//                items = Array(items.prefix(maxCount))
//            }
            state.sections = [VideoSection(items: videos)]
//            state.endOfData = false
            state.firstLoading = false
//            state.dataState = items.count > 0 ? .hasData : .dataIsEmpty
                
        case .moreDataLoaded(let videos):
            state.sections[0].addItems(items: videos)
//            state.endOfData = videos.isEmpty
            state.firstLoading = false
        }
        return state
    }
}

fileprivate extension TrendsReactor {

    func reloadData() {
        interact(interactor.videos(),
                 complete: TrendsReactor.dataReloaded,
                 error: TrendsReactor.dataLoadFailed,
                 inProgress: Mutation.inProgressLoad)
    }
    
    func dataReloaded(data: [Video]) {
       make(.dataReloaded(data))
    }
       
    func dataLoadFailed(_ error: Error) {
//           coordinator.show(.alert, title: nil, message: "Ошибка при загрузке заявок", items: .ok)
    }
    
    func loadMore() {
//        guard let moreLoader = moreDataLoaderProvider,
//              let offset = currentState.sections.first?.items.count  else { return }
//
//        interact(moreLoader(offset),
//                 complete: CollectionReactor<Item>.loadedMore,
//                 error: CollectionReactor<Item>.loadingFailed,
//                 inProgress: Mutation.inProgressLoadMore)
    }
    
    func loadedMore(items: [Video]) {
        make(.moreDataLoaded(items))
    }
}
