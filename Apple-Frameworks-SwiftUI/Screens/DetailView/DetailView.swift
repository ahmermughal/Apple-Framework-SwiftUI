//
//  DetailView.swift
//  Apple-Frameworks-SwiftUI
//
//  Created by Ahmer Mughal on 26.03.24.
//

import SwiftUI

struct DetailView: View {
    
    var framework : Framework
    
    @State private var isShowingSafariView = false
    
    
    var body: some View {
        VStack{
                                    
            GridItemView(framework: framework)
            
            Text(MockData.sampleFramework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button(action: {
                isShowingSafariView = true
            }, label: {
                
                AFButton(title: "Learn More")
            })
            
        }
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString)!).ignoresSafeArea()
        })
    }
}

#Preview {
    DetailView(framework: MockData.sampleFramework)
}
