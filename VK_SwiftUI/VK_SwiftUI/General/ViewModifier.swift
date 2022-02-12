//
//  ViewModifier.swift
//  VK_SwiftUI
//
//  Created by LACKY on 12.02.2022.
//

import SwiftUI

struct NameTextModifier: ViewModifier {
    let size: CGFloat
    let design: Font.Design
    let style: Font.Weight
    
    func body(content: Content) -> some View {
        content
            .font(.system(size: size, weight: style, design: design))
    }
}

struct CircleShadowModifier: ViewModifier {
    
    let colorShadow: Color
    let radiusShadow: CGFloat
    
    func body(content: Content) -> some View {
        content
            .background(Circle()
                            .shadow(color: colorShadow, radius: radiusShadow))
    }
}
