//
//  DetailView.swift
//  PhysicsGlossary
//
//  Created by Mohamad Chahadeh on 9/6/23.
//

import SwiftUI

struct DetailView: View {
    
    var  item: String;
    
    var body: some View {
        Text("Details View \(item)")
            .navigationTitle("Details")
            .navigationBarTitleDisplayMode(.inline)
            
    }
}
