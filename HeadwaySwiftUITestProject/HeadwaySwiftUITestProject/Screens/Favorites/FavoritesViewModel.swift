//
//  FavoritesViewModel.swift
//  HeadwaySwiftUITestProject
//
//  Created by Ivan Pestov on 20.06.2022.
//

import Foundation

final class FavoritesViewModel: ObservableObject {
    
    @Published var savedItems: [Repository] = []
    @Published var isShowingDetail = false
    @Published var selectedRepository: Repository?
    
    public var db = Database.shared
    
    init() {
        self.savedItems = db.read()
    }
    
}
