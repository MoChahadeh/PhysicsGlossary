//
//  SearchBar.swift
//  PhysicsGlossary
//
//  Created by Mohamad Chahadeh on 9/8/23.
//

import SwiftUI

struct SearchBar: View {
    
    @Binding var searchText: String;
    
    var body: some View {
        
        VStack {
            HStack(spacing: 0){
                
                Image(systemName: "magnifyingglass").resizable().frame(width:18,height:18).padding(.horizontal).foregroundColor(.secondary.opacity(0.5))

                TextField(text: $searchText) {
                    Text("Search..");

                }.frame(height: 60)
            }.background(.secondary.opacity(0.1)).cornerRadius(20)
        }.padding(.horizontal)
    }
}
