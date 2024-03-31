//
//  GridItemView.swift
//  Apple-Frameworks-SwiftUI
//
//  Created by Ahmer Mughal on 24.03.24.
//

import SwiftUI

struct GridItemView: View {
    
    let framework : Framework
    
    var body: some View {
        
        VStack{
            
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.5)
        }
        .padding()
        
    }
}
