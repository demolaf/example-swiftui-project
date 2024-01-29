//
//  UserListSearchTextField.swift
//  check_it_swiftui
//
//  Created by Ademola Fadumo on 26/01/2024.
//

import SwiftUI

struct UserListSearchTextField: View {
    var body: some View {
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
    UserListSearchTextField()
}
