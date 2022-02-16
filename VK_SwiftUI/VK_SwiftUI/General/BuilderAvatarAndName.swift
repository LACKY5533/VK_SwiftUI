//
//  BuilderAvatarAndName.swift
//  VK_SwiftUI
//
//  Created by LACKY on 12.02.2022.
//

import SwiftUI

struct AvatarBuilder: View {
    
    private var content: Image
    
    init(@ViewBuilder content: () -> Image) {
        self.content = content()
    }
    
    var body: some View {
        content
            .resizable()
            .frame(width: 40, height: 40, alignment: .center)
            .clipShape(Circle())
            .modifier(CircleShadowModifier(colorShadow: .blue, radiusShadow: 3))
    }
}

struct NameTextBuilder: View {
    private var content: Text
    
    init(@ViewBuilder content: () -> Text) {
        self.content = content()
    }
    
    var body: some View {
        content
            .foregroundColor(.black)
            .listRowBackground(Color.clear)
            .modifier(NameTextModifier(size: 20, design: . default, style: . regular))
    }
}

struct ImageWhenOpenInFriendProfile: View {
    var content: Image

    init(@ViewBuilder content: () -> Image) {
        self.content = content()
    }

    var body: some View {
        content
            .resizable()
            .frame(width: 100, height: 100)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.gray, lineWidth: 1))
    }

}
