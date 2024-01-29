//
//  UserListHeaderView.swift
//  check_it_swiftui
//
//  Created by Ademola Fadumo on 26/01/2024.
//

import SwiftUI

struct UserListHeaderView: View {
    var body: some View {
        HStack {
            Text("Github Explorer")
                .font(FontFamily.NunitoSans7pt.bold.swiftUIFont(size: 20))
                .foregroundStyle(Asset.Colors.ColorScheme.headline.swiftUIColor)
            Spacer()
            Button("", systemImage: "bell") {

            }
            .font(.system(size: 24))
            .foregroundStyle(Asset.Colors.ColorScheme.primary.swiftUIColor)
        }
        Text("Connect and Collaborate with the Community")
            .foregroundStyle(Asset.Colors.ColorScheme.body.swiftUIColor)
            .font(FontFamily.NunitoSans7pt.regular.swiftUIFont(size: 16))
            .lineLimit(1)
            .minimumScaleFactor(0.01)
    }
}

#Preview {
    UserListHeaderView()
}
