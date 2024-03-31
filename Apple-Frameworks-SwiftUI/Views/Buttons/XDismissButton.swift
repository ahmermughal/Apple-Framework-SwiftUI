//
//  XDismissButton.swift
//  Apple-Frameworks-SwiftUI
//
//  Created by Ahmer Mughal on 31.03.24.
//

import SwiftUI

struct XDismissButton: View {
    
    @Binding var isShowingDetailView : Bool
    
    var body: some View {
        HStack {
            Spacer()
            Button{
                isShowingDetailView = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundStyle(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
                    .background(Color(.tertiaryLabel))
                    .clipShape(.circle)
            }
        }
        .padding()
    }
}

#Preview {
    XDismissButton(isShowingDetailView: .constant(false))
}
