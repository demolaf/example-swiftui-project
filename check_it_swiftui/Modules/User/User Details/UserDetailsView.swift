//
//  UserDetailsView.swift
//  check_it_swiftui
//
//  Created by Ademola Fadumo on 26/01/2024.
//

import SwiftUI

struct UserDetailsView: View {
    let currentIndex: Int

    var body: some View {
        VStack(alignment: .leading, spacing: 36) {
            VStack(alignment: .leading, spacing: 24) {
                header
                description
            }
            .padding(.horizontal, 24)
            VStack(alignment: .leading, spacing: 24) {
                recentRepositories
                    .padding(.horizontal, 24)
                List(0..<20) { index in
                    recentRepositoriesItem
                        .listRowBackground(Color.clear)
                        .listRowSeparator(.hidden, edges: .all)
                        .listRowInsets(EdgeInsets())
                        .padding(.horizontal, 20)
                }
                .padding(.horizontal, 4)
                .listRowSpacing(16)
                .listStyle(.plain)
            }
        }
        .toolbarRole(.editor)
        .toolbar {
            ToolbarItemGroup {
                Button("", systemImage: "bookmark") {
                    debugPrint("bookmark button pressed")
                }
            }
        }
    }

    var header: some View {
        HStack(spacing: 20) {
            Image("profile-placeholder", bundle: .main)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .background(.primary, in: .circle)
                .clipShape(Circle())
                .frame(maxHeight: 96)
            VStack(alignment: .leading, spacing: 4) {
                Text("mojombo")
                    .font(FontFamily.NunitoSans7pt.bold.swiftUIFont(size: 16))
                    .foregroundStyle(Asset.Colors.ColorScheme.headline.swiftUIColor)
                Text("Email: marcus.j@example.com")
                    .lineLimit(1)
                    .font(FontFamily.NunitoSans7pt.regular.swiftUIFont(size: 12))
                    .foregroundStyle(Asset.Colors.ColorScheme.body.swiftUIColor)
                Text("Location: San Francisco, CA.")
                    .lineLimit(1)
                    .minimumScaleFactor(0.01)
                    .font(FontFamily.NunitoSans7pt.regular.swiftUIFont(size: 12))
                    .foregroundStyle(Asset.Colors.ColorScheme.body.swiftUIColor)
                Text("30,000 Commits")
                    .font(FontFamily.NunitoSans7pt.semiBold.swiftUIFont(size: 12))
                    .foregroundStyle(Asset.Colors.ColorScheme.primary.swiftUIColor)
            }
        }
    }

    var description: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("About")
                .font(FontFamily.NunitoSans7pt.bold.swiftUIFont(size: 14))
                .foregroundStyle(Asset.Colors.ColorScheme.headline.swiftUIColor)
            Text("Lorem Ipsum, Lorem Ipsum, Lorem Ipsum, Lorem Ipsum, Lorem Ipsum, Lorem Ipsum, Lorem Ipsum, Lorem Ipsum, Lorem Ipsum, Lorem Ipsum, Lorem Ipsum, Lorem Ipsum, Lorem Ipsum, Lorem Ipsum, Lorem Ipsum."
            )
            .font(FontFamily.NunitoSans7pt.regular.swiftUIFont(size: 12))
            .foregroundStyle(Asset.Colors.ColorScheme.body.swiftUIColor)
        }
    }

    var recentRepositories: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Recent Repositories")
                .font(FontFamily.NunitoSans7pt.bold.swiftUIFont(size: 14))
                .foregroundStyle(Asset.Colors.ColorScheme.headline.swiftUIColor)
            Text("Navigate their codebase and development history")
                .font(FontFamily.NunitoSans7pt.regular.swiftUIFont(size: 12))
                .foregroundStyle(Asset.Colors.ColorScheme.body.swiftUIColor)
        }
    }

    var recentRepositoriesItem: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack {
                HStack(spacing: 16) {
                    Image(systemName: "folder.fill")
                        .foregroundStyle(Asset.Colors.ColorScheme.primary.swiftUIColor)
                    Text(".devops")
                        .font(FontFamily.NunitoSans7pt.semiBold.swiftUIFont(size: 14))
                        .foregroundStyle(Asset.Colors.ColorScheme.headline.swiftUIColor)
                }
                Spacer()
                Text("1 hour ago")
                    .font(FontFamily.NunitoSans7pt.regular.swiftUIFont(size: 14))
                    .foregroundStyle(Asset.Colors.ColorScheme.headline.swiftUIColor)
            }
            Text("devops: added systemized units and set versioning date")
                .lineLimit(2)
                .font(FontFamily.NunitoSans7pt.regular.swiftUIFont(size: 12))
                .foregroundStyle(Asset.Colors.ColorScheme.body.swiftUIColor)
        }
        .padding(16)
        .frame(maxWidth: .infinity)
        .background {
            RoundedRectangle(cornerRadius: 10)
                .strokeBorder(
                    Asset.Colors.CustomColors.border.swiftUIColor,
                    lineWidth: 1
                )
        }
    }
}

#Preview {
    UserDetailsView(currentIndex: 0)
}
