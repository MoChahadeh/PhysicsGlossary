//
//  ListItem.swift
//  PhysicsGlossary
//
//  Created by Mohamad Chahadeh on 9/7/23.
//

import SwiftUI

struct ListItem: View {
    
    var item: String;
    
    var body: some View {
        
        NavigationLink(destination: DetailView(item: item)) {
            
            HStack {
                Text("\(item)")
                    
                    
                Spacer()
            }.frame(height: 75).padding(.horizontal)
            
        }
        .foregroundColor(.white)
        .background(.secondary)
        .cornerRadius(20)
        .padding(.horizontal)
        
    }
}
