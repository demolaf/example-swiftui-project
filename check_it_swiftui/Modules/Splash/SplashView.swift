//
//  SplashView.swift
//  check_it_swiftui
//
//  Created by Ademola Fadumo on 26/01/2024.
//

import SwiftUI

struct SplashView: View {
    @State private var goToOnboarding = false

    var body: some View {
        NavigationStack {
            VStack {
                HStack(spacing: 10) {
                    Asset.Assets.checkitLogo.swiftUIImage
                    Text("check it")
                        .textCase(.uppercase)
                        .font(FontFamily.NunitoSans7pt.black.swiftUIFont(size: 40))
                }
            }
            .backgroundFill(Asset.Colors.ColorScheme.tertiary.swiftUIColor)
            .navigationDestination(isPresented: $goToOnboarding) {
                OnboardingView()
                    .navigationBarBackButtonHidden()
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    goToOnboarding = true
                }
            }
        }
    }
}

#Preview {
    SplashView()
}
