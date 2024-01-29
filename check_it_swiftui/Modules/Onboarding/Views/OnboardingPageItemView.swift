//
//  OnboardingPageItem.swift
//  check_it_swiftui
//
//  Created by Ademola Fadumo on 26/01/2024.
//

import SwiftUI

struct OnboardingPageItemView: View {

    let data: OnboardingData

    var body: some View {
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

#Preview {
    OnboardingPageItemView(data: OnboardingData.data[0])
}
