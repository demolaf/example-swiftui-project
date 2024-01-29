//
//  UserListView.swift
//  check_it_swiftui
//
//  Created by Ademola Fadumo on 26/01/2024.
//

import SwiftUI

struct UserListPlaceholder: Identifiable, Hashable {
    let id = UUID()
    let index: Int
}

struct UserListView: View {
    var body: some View {
        VStack(spacing: 24) {
            VStack(alignment: .leading, spacing: 24) {
                UserListHeaderView()
                UserListSearchTextField()
            }
            .padding(.horizontal, 24)
            List(0..<20) { index in
                UserListItemView()
                    .overlay {
                        NavigationLink {
                            UserDetailsView(currentIndex: index)
                        } label: {
                            EmptyView()
                        }
                        .opacity(0)
                    }
                    .buttonStyle(PlainButtonStyle())
                    .listRowBackground(Color.clear)
                    .listRowSeparator(.hidden, edges: .all)
                    .listRowInsets(EdgeInsets())
                    .padding(.horizontal, 20)
            }
            .padding(.horizontal, 4)
            .listStyle(.plain)
        }
    }
}

#Preview {
    UserListView()
}
