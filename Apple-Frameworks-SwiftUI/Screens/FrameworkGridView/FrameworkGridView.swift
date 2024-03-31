//
//  FrameworkGridView.swift
//  Apple-Frameworks-SwiftUI
//
//  Created by Ahmer Mughal on 24.03.24.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    
    var body: some View {
        NavigationStack {
            
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    
                    ForEach(MockData.frameworks) { framework in
                        
                        NavigationLink(value: framework) {
                            GridItemView(framework: framework)
                        }
                    }
                    
                }
            }
            .navigationTitle("Frameworks")
            .navigationDestination(for: Framework.self) { framework in
                DetailView(framework: framework)
            }

        }
        
        
        
        
    }
}

#Preview {
    FrameworkGridView()
}
