//
//  ItemData.swift
//  PhysicsGlossary
//
//  Created by Mohamad Chahadeh on 9/7/23.
//

import Foundation

struct ItemObj: Codable {
    
    var id: Int = -1;
    var name: String = "";
    var description: String = "";
    var formula_desc: String = "";
    var formula_img: Int = -1;
    var calc_id: Int = -1;
    var video_ids: [String] = [];
    
    static let items: [ItemObj] = Bundle.main.decode(file: "data.json");
    
}


extension Bundle {
    
    func decode<T: Decodable>(file: String) -> T {
        
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Could not find \(file) in the project..");
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Could not load \(file)");
        }
        
        let decoder = JSONDecoder();
        
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError("could not decode data..");
        }
        
        return decodedData;
        
    }
    
}


