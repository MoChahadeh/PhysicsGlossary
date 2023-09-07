//
//  ItemsList.swift
//  PhysicsGlossary
//
//  Created by Mohamad Chahadeh on 9/7/23.
//

import SwiftUI

struct ItemsList: View {
    
    var items: [ItemObj];
    
    var body: some View {
            
        VStack(spacing: 20){
            
            ForEach(items, id: \.self.id) {item in
                ListItem(item: item)
            }
            
        }.padding(.vertical, 20)
    }
}
