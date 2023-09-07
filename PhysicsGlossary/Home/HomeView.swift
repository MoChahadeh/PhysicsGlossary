//
//  HomeView.swift
//  PhysicsGlossary
//
//  Created by Mohamad Chahadeh on 9/6/23.
//

import SwiftUI


struct HomeView: View {
    
    var data:[ItemObj];
    
    var body: some View {
        
        NavigationView {
            Home(data: data)
                .navigationTitle("Home");
        }
        
    }
}
