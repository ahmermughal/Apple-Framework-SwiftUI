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
        NavigationView {
            
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    
                    ForEach(MockData.frameworks) { framework in
                        GridItemView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                    
                }
            }
            .navigationTitle("Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView, content: {
                DetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework, isShowingDetailView: $viewModel.isShowingDetailView)
            })
        }
        
        
        
        
    }
}

#Preview {
    FrameworkGridView()
}
