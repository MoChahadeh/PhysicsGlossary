//
//  DetailView.swift
//  PhysicsGlossary
//
//  Created by Mohamad Chahadeh on 9/6/23.
//

import SwiftUI

struct DetailView: View {
    
    var  item: ItemObj;
    
    var body: some View {
        
        ScrollView {
            
            VStack(alignment: .leading, spacing: 5) {
                Text("\(item.name.capitalized):")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Text(item.description)
                    .font(.body)
            }.frame(idealWidth: .infinity).padding()
            
            Divider()
            
            if(item.formula_img != 0) {
                
                VStack(alignment: .leading, spacing: 5){
                    HStack {
                        VStack(alignment: .leading, spacing: 5) {
                            Text("Formula:")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                
                            Text("\(item.formula_desc)")
                                .font(.body)
                                .italic()
                        }
                        Spacer()
                    }
                }.frame(maxWidth:.infinity).padding().multilineTextAlignment(.leading)
                
            }
            
            
            Spacer()
            
        }
        .frame(idealWidth: .infinity)
        .navigationTitle(item.name.capitalized)
        .navigationBarTitleDisplayMode(.inline)
        
            
    }
}

struct DetailsView_Previews: PreviewProvider {
    
    static var previewItem:ItemObj = ItemObj.items[1];
    
    static var previews: some View {
        DetailView(item: previewItem)
    }
    
}
