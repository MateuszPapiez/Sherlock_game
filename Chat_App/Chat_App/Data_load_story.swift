//
//  Data_load_story.swift
//  Chat_App
//
//  Created by Mateusz Papież on 07/03/2023.
//

import Foundation
import SwiftUI

struct Story: Codable, Hashable {
    let title: String
    let main_image: String
    let color: String
    let time: String
    let player: String
    let text_part_1: String
    let text_part_2: String
    let text_part_3: String
    let image_part_1: String
    let image_part_2: String
    let image_part_3: String
    //let onestory: [Onestory]
    
    static let allStory: [Story] = Bundle.main.decode(file: "data_story.json")
    //static let simplestory: Story = allStory[0]
}
//struct Onestory: Codable, Hashable, Identifiable {
//    var id: UUID? = UUID()
//    let text_part_1: String
//    let text_part_2: String
//    let text_part_3: String
//    let image_part_1: String
//    let image_part_2: String
//    let image_part_3: String
//}

extension Bundle {
    func decode<T: Decodable>(file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Could not find \(file) in bundle.")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Could not load \(file) from bundle.")
        }
        
        let decoder = JSONDecoder()
        
       // guard let loadedData = try? decoder.decode(T.self, from: data) else {
            //fatalError("Could not decode \(file) from bundle.")
        //}
        var loadedData : T?
        do {
            loadedData = try decoder.decode(T.self, from: data)
        } catch {
            loadedData = nil
        }
        
        if let notopcionalloadedData = loadedData {
            return notopcionalloadedData
        }
        else {
            fatalError("Could not decode \(file) from bundle.")
        }
    }
}

