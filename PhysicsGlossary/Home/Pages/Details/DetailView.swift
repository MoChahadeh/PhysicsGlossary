//
//  DetailView.swift
//  PhysicsGlossary
//
//  Created by Mohamad Chahadeh on 9/6/23.
//

import SwiftUI

struct DetailView: View {
    
    var  item: ItemObj;
    
    @State private var showAlert = false;
    @State private var sheetIsShown = false;
    
    var body: some View {
        
        ScrollView {
            
            VStack(alignment: .leading) {
                HStack {
                    
                    VStack(alignment: .leading, spacing: 10) {
                        Text("\(item.name.capitalized):")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .fixedSize(horizontal: false, vertical: true)
                        
                        Text(item.description)
                            .font(.body)
                            .multilineTextAlignment(.leading)
                            
                            
                    }.frame(maxHeight:.infinity)
                    
                    Spacer()
                }
            }.frame(maxWidth: .infinity).padding().multilineTextAlignment(.leading)
            
            
            if(item.formula_img != 0) {
                
                Divider()

                
                VStack(alignment: .leading, spacing: 5){
                    HStack {
                        VStack(alignment: .leading, spacing: 5) {
                            HStack{
                                Text("Formula:")
                                    .font(.largeTitle)
                                    .fontWeight(.bold)
                                Spacer()
                                
                                Button {
                                    shareImage(formula_img: item.formula_img)
                                } label: {
                                    Image(systemName: "square.and.arrow.up")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(height: 28).padding(.horizontal, 5)
                                        .foregroundColor(.primary)
                                }
                            }
                                
                            Text("\(item.formula_desc)")
                                .font(.body)
                                .italic()
                            
                            
                        }
                        Spacer()
                    }
                    
                    Image("\(item.formula_img)").resizable().aspectRatio(contentMode: .fit).frame(maxWidth:.infinity).padding()
                }.frame(maxWidth:.infinity).padding().multilineTextAlignment(.leading)
                
            }
            
            
            if(item.video_ids.count > 0) {
                
                Divider()
                
                VStack(alignment: .leading, spacing: 15) {
                    
                    HStack {
                        Text("Watch:")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.leading)
                        
                        Spacer()
                    }
                    
                    TabView {
                        
                        ForEach(Array(item.video_ids.enumerated()), id:\.offset) { index, video_id in
                            
                                
                            ZStack {
                                Button {
                                    if(!goToVideo(video_id: video_id)) {
                                        showAlert = true;
                                        
                                    }
                                } label: {
                                    UrlImage(imageURL: URL(string: "https://i.ytimg.com/vi/\(video_id)/hqdefault.jpg"))
                                }.alert(isPresented: $showAlert) {
                                    Alert (title: Text("Error"), message: Text("Could not open video."), dismissButton: .default(Text("Cancel")))
                                }
                                
                                VStack(alignment: .leading) {
                                    Spacer();
                                    
                                    Text("Video title here..\n").foregroundColor(.white).multilineTextAlignment(.leading)
                                }.padding().shadow(color: .black, radius: 20)
                            }.cornerRadius(20)
                            
                        }
                        
                    }.tabViewStyle(PageTabViewStyle()).frame(maxWidth: .infinity, minHeight: 270)
                    
                }.frame(maxWidth:.infinity, maxHeight: .infinity).padding()
                
            }
            
            
            Spacer()
            
        }
        .frame(idealWidth: .infinity)
        .navigationTitle(item.name.capitalized)
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(trailing: Button {
            sheetIsShown = true;
        } label: {
            Image("wiki").resizable().aspectRatio(contentMode: .fit).frame(height:26)
        })
        .sheet(isPresented: $sheetIsShown) {
            WikiSheet(itemName: item.name.lowercased())
        }
        
            
    }
    
    private func goToVideo(video_id: String) -> Bool {
                
        guard let url = URL(string: "https://youtu.be/\(video_id)") else {
            return false
        }
        
        return UIApplication.shared.openURL(url)
        
    
    }
    
    private func shareImage(formula_img: Int) {
        if let image = UIImage(named: "\(formula_img)") { // Replace with your image's name
            let activityViewController = UIActivityViewController(activityItems: [image], applicationActivities: nil)
            
            if let topController = UIApplication.shared.windows.first?.rootViewController {
                activityViewController.popoverPresentationController?.sourceView = topController.view
                topController.present(activityViewController, animated: true, completion: nil)
            }
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    
    static var previewItem:ItemObj = ItemObj.items[1];
    
    static var previews: some View {
        DetailView(item: previewItem)
    }
    
}
