//
//  ContentView.swift
//  PhysicsGlossary
//
//  Created by Mohamad Chahadeh on 9/6/23.
//

import SwiftUI
import CoreData

let data:[ItemObj] = ItemObj.items;

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext
    
    
    let dailyItems:[ItemObj] = Array(data.shuffled()[0..<3])
    
    var body: some View {
        TabView {
            
            HomeView(data: data, dailyItems: dailyItems).tabItem{
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
