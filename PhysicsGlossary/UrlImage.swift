//
//  UrlImage.swift
//  PhysicsGlossary
//
//  Created by Mohamad Chahadeh on 9/8/23.
//

import SwiftUI

struct UrlImage: View {
    
    var imageURL: URL?
    
    @State private var image: UIImage?
    
    var body: some View {
        
        if let image = image {
            
            Image(uiImage: image)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
        } else {
            Text("Loading...")
                .onAppear {
                    loadImageFromURL();
                }
        }
        
    }
    
    private func loadImageFromURL() {
        guard let imageURL = imageURL else { return }
        
        URLSession.shared.dataTask(with: imageURL) { data, response, error in
            if let data = data, let loadedImage = UIImage(data: data) {
                DispatchQueue.main.async {
                    self.image = loadedImage
                }
            } else if let error = error {
                print("Error loading image: \(error.localizedDescription)")
            }
        }.resume()
    }

}
