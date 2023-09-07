//
//  ListItem.swift
//  PhysicsGlossary
//
//  Created by Mohamad Chahadeh on 9/7/23.
//

import SwiftUI

struct ListItem: View {
    
    var item: ItemObj;
    
    var body: some View {
        
        NavigationLink(destination: DetailView(item: item)) {
            
            HStack {
                Text("\(item.name.capitalized)")
                    
                    
                Spacer()
            }.frame(height: 75).padding(.horizontal)
            
        }
        .foregroundColor(.white)
        .background(.secondary.opacity(0.8))
        .cornerRadius(20)
        .padding(.horizontal)
        
    }
}
