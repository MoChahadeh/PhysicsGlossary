//
//  Home.swift
//  PhysicsGlossary
//
//  Created by Mohamad Chahadeh on 9/6/23.
//

import SwiftUI

struct Home: View {
    
    var data:[ItemObj];
    
    var body: some View {
        
        ScrollView {
    
            DailySlider(itemsToShow: Array(data.shuffled()[0..<3]));
            
            ItemsList(items: data);

        }
    }
}
