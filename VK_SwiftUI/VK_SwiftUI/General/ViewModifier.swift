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

struct AvatarAnimationModifier: ViewModifier {
    @State var scale: CGFloat = 1
    
    func body(content: Content) -> some View {
        content
            .scaleEffect(self.scale)
            .animation(Animation.interpolatingSpring(
                mass: 2,
                stiffness: 50,
                damping: 100,
                initialVelocity: 12), value: scale)
        
            .onTapGesture {
                withAnimation(.easeInOut(duration: 0.1)) {
                    self.scale = 0.3
                }
                self.scale = 1.0
            }
    }
}
