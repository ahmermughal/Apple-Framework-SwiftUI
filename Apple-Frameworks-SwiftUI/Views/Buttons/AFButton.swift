//
//  AFButton.swift
//  Apple-Frameworks-SwiftUI
//
//  Created by Ahmer Mughal on 26.03.24.
//

import SwiftUI

struct AFButton: View {
    
    var title : String
    
    var body: some View {
        Text(title)
            .font(.title2)
            .frame(width: 280, height: 50)
            .background(.red)
            .foregroundStyle(.white)
            .clipShape(.buttonBorder)
    }
}

#Preview {
    AFButton(title: "Learn More")
}
