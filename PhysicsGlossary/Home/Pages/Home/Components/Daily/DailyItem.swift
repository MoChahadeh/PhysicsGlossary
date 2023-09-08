//
//  DailyItem.swift
//  PhysicsGlossary
//
//  Created by Mohamad Chahadeh on 9/6/23.
//

import SwiftUI

struct DailyItem: View {
    
    var item: ItemObj;
    
    var body: some View {
        NavigationLink(destination: DetailView(item: item)) {
            
            VStack(alignment: .leading){
               
                HStack {
                    VStack(alignment:.leading, spacing: 8) {
                        Text("\(item.name.capitalized)")
                           .font(.title)
                           .fontWeight(.bold)
                           .multilineTextAlignment(.leading)
                        
                        Text("\(item.description)")
                            .multilineTextAlignment(.leading)
                    }
                    Spacer();
                }
                
                Spacer()
               
           }
            .padding(.vertical, 25)
            .padding(.horizontal, 20)
            .frame(maxWidth:.infinity, idealHeight: .infinity)
                
            
        }
        .foregroundColor(.white)
        .background(.secondary.opacity(0.8))
        .cornerRadius(20)
        .padding()
        
        
    }
}
