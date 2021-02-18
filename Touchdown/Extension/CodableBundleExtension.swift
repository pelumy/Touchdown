//
//  CodableBundleExtension.swift
//  Touchdown
//
//  Created by Itunu Raimi on 18/02/2021.
//

import Foundation

extension Bundle {
    func decode<T: Codable> (_ fileName: String) -> T {
        guard let url = self.url(forResource: fileName, withExtension: nil) else {
            fatalError("failed to locate \(fileName) in bundle")
        }
        guard let data = try? Data(contentsOf: url) else {
            fatalError("failed to load \(fileName) from bundle")
        }
        let decoder = JSONDecoder()
        guard let loadedData = try? decoder.decode(T.self, from: data) else {
            fatalError("failed to decode \(fileName) from bundle")
        }
        return loadedData
    }
}
