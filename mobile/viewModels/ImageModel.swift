//
//  ImageModel.swift
//  mobile
//
//  Created by Andrii on 1/27/21.
//

import Foundation

import SwiftUI

class ImageModel: ObservableObject {
    @Published var image: UIImage

    init(imageURL: String) {
        let url = URL(string: imageURL)
        self.image = UIImage(systemName: "bandage.fill")!
        DispatchQueue.global().async {
            let data = try? Data(contentsOf: url!)
            DispatchQueue.main.async { [self] in
                image = UIImage(data: data!)!
            }
        }
    }
}
