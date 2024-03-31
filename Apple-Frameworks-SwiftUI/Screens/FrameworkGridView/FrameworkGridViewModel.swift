//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks-SwiftUI
//
//  Created by Ahmer Mughal on 28.03.24.
//

import SwiftUI


final class FrameworkGridViewModel : ObservableObject  {
    
    
    let columns : [GridItem] = [GridItem(.flexible()),
                                GridItem(.flexible()),
                                GridItem(.flexible())]
        
}
