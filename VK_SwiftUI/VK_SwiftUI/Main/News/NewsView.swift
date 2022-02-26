//
//  NewsView.swift
//  VK_SwiftUI
//
//  Created by LACKY on 16.02.2022.
//

import SwiftUI

struct NewsView: View {
    
    @ObservedObject var viewModel: NewsViewModel
    
    init(viewModel: NewsViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
         Text("не работает")
//        List(viewModel.newsFeed!) { news in
//
//            NewsCell(newsItem: news)
//
//        }.onAppear(perform: viewModel.fetchNews)
    }
}
