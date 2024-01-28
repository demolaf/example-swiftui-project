//
//  ViewExtension.swift
//  check_it_swiftui
//
//  Created by Ademola Fadumo on 28/01/2024.
//

import SwiftUI

/// ViewExtension
struct BackgroundFill: ViewModifier, Animatable {
    let color: Color

    func body(content: Content) -> some View {
        content
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(color)
    }
}

extension View {
    func backgroundFill(_ color: Color) -> some View {
        modifier(BackgroundFill(color: color))
    }
}
