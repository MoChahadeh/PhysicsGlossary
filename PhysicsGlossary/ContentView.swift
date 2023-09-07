//
//  ContentView.swift
//  PhysicsGlossary
//
//  Created by Mohamad Chahadeh on 9/6/23.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext
    
    let data:[ItemObj] = ItemObj.items;
    
    var body: some View {
        TabView {
            
            HomeView(data: data).tabItem{
                Image(systemName: "house")
                Text("Home")
            }
            
            CalculateView().tabItem {
                Image(systemName: "plus.circle")
                Text("Calculate")
            }
            
            SettingsView().tabItem {
                Image(systemName: "gear")
                Text("Settings")
            }
            
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
