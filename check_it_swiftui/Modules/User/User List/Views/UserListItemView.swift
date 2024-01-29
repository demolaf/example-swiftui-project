//
//  UserListItemView.swift
//  check_it_swiftui
//
//  Created by Ademola Fadumo on 26/01/2024.
//

import SwiftUI

struct UserListItemView: View {
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                HStack(spacing: 12) {
                    Image("profile-placeholder", bundle: .main)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .background(.primary, in: .circle)
                        .clipShape(Circle())
                        .frame(maxWidth: 50, maxHeight: 50)
                    VStack(alignment: .leading, spacing: 4) {
                        Text("mojombo")
                            .font(FontFamily.NunitoSans7pt.semiBold.swiftUIFont(size: 16))
                            .foregroundStyle(Asset.Colors.ColorScheme.headline.swiftUIColor)
                        Text("grit")
                            .font(FontFamily.NunitoSans7pt.regular.swiftUIFont(size: 14))
                            .foregroundStyle(Asset.Colors.ColorScheme.body.swiftUIColor)
                    }
                }
                Spacer()
                VStack(alignment: .leading) {
                    Text("30k+")
                        .font(FontFamily.NunitoSans7pt.regular.swiftUIFont(size: 24))
                        .foregroundStyle(Asset.Colors.ColorScheme.primary.swiftUIColor)
                    Text("Commits")
                        .font(FontFamily.NunitoSans7pt.regular.swiftUIFont(size: 14))
                        .foregroundStyle(Asset.Colors.ColorScheme.body.swiftUIColor)
                }
            }
            .padding(.vertical, 24)
            Divider()
        }
    }
}

#Preview {
    UserListItemView()
}
