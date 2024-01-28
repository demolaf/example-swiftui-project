//
//  OnboardingView.swift
//  check_it_swiftui
//
//  Created by Ademola Fadumo on 26/01/2024.
//

import SwiftUI

struct OnboardingView: View {

    func onAppear() {
        UIPageControl.appearance().currentPageIndicatorTintColor = Asset.Colors.ColorScheme.tertiary.color.light()
        UIPageControl.appearance().pageIndicatorTintColor = Asset.Colors.CustomColors.dotIndicator.color
    }

    var body: some View {
        VStack(spacing: 56) {
            TabView {
                ForEach(OnboardingData.data) { data in
                    VStack(spacing: 24) {
                        Image(data.image, bundle: .main)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .clipped()
                        Group {
                            Text(data.title)
                                .font(FontFamily.NunitoSans7pt.bold.swiftUIFont(size: 24))
                                .lineLimit(1)
                                .minimumScaleFactor(0.01)
                            Text(data.subitle)
                                .font(FontFamily.NunitoSans7pt.regular.swiftUIFont(size: 16))
                                .foregroundStyle(Asset.Colors.ColorScheme.body.swiftUIColor)
                                .multilineTextAlignment(.center)
                        }
                    }
                    .padding(.horizontal, 24)
                }
            }

            .tabViewStyle(.page(indexDisplayMode: .always))
            Button(action: {
                debugPrint("get started button pressed")
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
            .padding(.init(top: 0, leading: 38, bottom: 38, trailing: 38))
        }
        .onAppear(perform: onAppear)
    }
}

#Preview {
    OnboardingView()
}
