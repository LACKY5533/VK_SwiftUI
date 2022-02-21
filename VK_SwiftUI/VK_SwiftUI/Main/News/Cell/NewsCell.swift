//
//  NewsCell.swift
//  VK_SwiftUI
//
//  Created by LACKY on 20.02.2022.
//

import SwiftUI
import Kingfisher

struct NewsViewCell: View {
    
    let newsItem: NewsItem
    
    var body: some View {
        ScrollView {
        VStack {
            Text(newsItem.text!).bold()
            }
        }
    }
}
