//
//  ItemsList.swift
//  PhysicsGlossary
//
//  Created by Mohamad Chahadeh on 9/7/23.
//

import SwiftUI

struct ItemsList: View {
    
    var items: [String];
    
    var body: some View {
            
        VStack(spacing: 20){
            
            ForEach(items, id: \.self) {item in
                ListItem(item: item)
            }
            
        }.padding(.vertical, 20)
    }
}
