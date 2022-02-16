//
//  NewsView.swift
//  VK_SwiftUI
//
//  Created by LACKY on 16.02.2022.
//

import SwiftUI

struct NewsView: View {
    var body: some View {
            RootNewsView()
                .navigationBarTitle(Text("Новости"))
    }
}

struct RootNewsView: View {
    var body: some View {
        ZStack {
            List(0..<3) {item in
                HStack {
                    
                }.listRowBackground(Color.clear)
            }.background(Color(.blue))
        
        }
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
    }
}
