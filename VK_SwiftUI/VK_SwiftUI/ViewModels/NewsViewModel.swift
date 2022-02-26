//
//  NewsViewModel.swift
//  VK_SwiftUI
//
//  Created by LACKY on 20.02.2022.
//

import Foundation
import SwiftUI

class NewsViewModel: ObservableObject {
    
    let newsService: NewsAPI
    
    @Published var newsFeed: NewsJSON?
    @Published var nextFrom = ""
    @Published var newsItems: [NewsItem] = []
    @Published var newsGroups: [NewsGroup] = []
    @Published var newsProfiles: [NewsProfile] = []
    
    init(newsService: NewsAPI) {
        self.newsService = newsService
    }
    
    public func fetchNews() {
        newsService.getNews { feed in
            
            print("Getting news to viewmodel")
            self.newsFeed = feed
            self.newsItems = (feed?.response.items)!
            self.newsGroups = (feed?.response.groups)!
            self.newsProfiles = (feed?.response.profiles)!
            self.nextFrom = (feed?.response.nextFrom)!
        }
    }
}
