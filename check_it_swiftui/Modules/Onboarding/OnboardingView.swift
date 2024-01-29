//
//  OnboardingView.swift
//  check_it_swiftui
//
//  Created by Ademola Fadumo on 26/01/2024.
//

import SwiftUI

struct OnboardingView: View {
    @State private var goToUserList = false

    var body: some View {
        VStack(spacing: 56) {
            TabView {
                ForEach(OnboardingData.data) { data in
                    OnboardingPageItemView(data: data)
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .always))
            getStartedButton
                .padding(.init(top: 0, leading: 38, bottom: 38, trailing: 38))
                .navigationDestination(isPresented: $goToUserList) {
                    UserListView()
                        .navigationBarBackButtonHidden()
                }
        }
        .onAppear(perform: onAppear)
    }

    func onAppear() {
        UIPageControl.appearance().currentPageIndicatorTintColor = Asset.Colors.ColorScheme.tertiary.color.light()
        UIPageControl.appearance().pageIndicatorTintColor = Asset.Colors.CustomColors.dotIndicator.color
    }

    var getStartedButton: some View {
        Button(action: {
            goToUserList = true
        }, label: {
            Text("Get Started")
                .font(FontFamily.NunitoSans7pt.bold.swiftUIFont(size: 16))
                .foregroundStyle(.black)
                .frame(maxWidth: .infinity, minHeight: 44)
                .background(
                    RoundedRectangle(
                        cornerRadius: 12,
                        style: .continuous
                    )
                    .fill(Asset.Colors.ColorScheme.tertiary.swiftUIColor.light())
                    .shadow(
                        color: Asset.Colors.CustomColors.shadow.swiftUIColor.opacity(0.15),
                        radius: 5,
                        x: 0,
                        y: 3
                    )
                )
        })
    }
}

#Preview {
    OnboardingView()
}
