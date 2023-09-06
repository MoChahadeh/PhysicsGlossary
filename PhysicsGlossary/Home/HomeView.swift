//
//  HomeView.swift
//  PhysicsGlossary
//
//  Created by Mohamad Chahadeh on 9/6/23.
//

import SwiftUI

let data:[String] = [

    "Item1",
    "Item2",
    "Item3",
    "Item4",
    "Item5",
    "Item6",
    "Item7",
    "Item8"

];

struct HomeView: View {
    var body: some View {
        
        NavigationView {
            Home(data: data)
                .navigationTitle("Home");
        }
        
    }
}
