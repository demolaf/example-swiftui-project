//
//  UserListView.swift
//  check_it_swiftui
//
//  Created by Ademola Fadumo on 26/01/2024.
//

import SwiftUI

struct UserListView: View {
    var body: some View {
        VStack(spacing: 24) {
            VStack(alignment: .leading, spacing: 24) {
                header
                searchTextField
            }
            .padding(.horizontal, 24)
            List(0..<20) { _ in
                userListItem
                .listRowSeparator(.hidden, edges: .all)
                .listRowInsets(EdgeInsets())
                .padding(.horizontal, 20)
            }
            .padding(.horizontal, 4)
            .listStyle(.plain)
        }
    }

    var userListItem: some View {
        VStack(spacing: 0) {
            HStack {
                HStack(spacing: 12) {
                    Image("profile-placeholder", bundle: .main)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .background(.primary, in: .circle)
                        .clipShape(Circle())
                        .frame(maxWidth: 50)
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
            .padding(.vertical, 16)
            Divider()
        }
    }

    @ViewBuilder
    var header: some View {
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

    var searchTextField: some View {
        HStack {
            Image(systemName: "magnifyingglass")
            TextField(text: .constant("")) {
                Text("Search Users by Name or Email")
                    .foregroundStyle(Asset.Colors.CustomColors.textFieldPlaceholder.swiftUIColor)
                    .font(FontFamily.NunitoSans7pt.regular.swiftUIFont(size: 14))
            }
            Spacer()
            Image(systemName: "slider.vertical.3")
                .foregroundStyle(Asset.Colors.ColorScheme.primary.swiftUIColor)
        }
        .padding()
        .background {
            RoundedRectangle(cornerRadius: 12)
                .fill(.clear)
                .strokeBorder(Asset.Colors.CustomColors.border.swiftUIColor)
        }
    }
}

#Preview {
    UserListView()
}
