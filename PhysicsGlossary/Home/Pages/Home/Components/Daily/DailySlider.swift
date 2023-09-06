//
//  DailySlider.swift
//  PhysicsGlossary
//
//  Created by Mohamad Chahadeh on 9/6/23.
//

import SwiftUI

struct DailySlider: View {
    
    var itemsToShow: [String];
        
    var body: some View {
        
        TabView {
            
            ForEach(0..<3) {i in
                
                DailyItem(item: itemsToShow[i]).tag(i)
                
            }
            
        }.tabViewStyle(PageTabViewStyle()).frame(height: 275)
        
        
    }
}
