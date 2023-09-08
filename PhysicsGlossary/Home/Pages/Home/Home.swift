//
//  Home.swift
//  PhysicsGlossary
//
//  Created by Mohamad Chahadeh on 9/6/23.
//

import SwiftUI


struct Home: View {
    
    var data:[ItemObj];
    var dailyItems: [ItemObj];
    
    @State var searchText:String = "";
    
    var body: some View {
        
        ScrollView {
    
            DailySlider(itemsToShow: dailyItems);
            
            SearchBar(searchText: $searchText);
                        
            ItemsList(items:searchText == "" ? data : data.filter { item in
                
                
                
                return item.name.lowercased().contains(searchText.lowercased()) || item.description.lowercased().contains(searchText.lowercased())
                
            });

        }
    }
}
