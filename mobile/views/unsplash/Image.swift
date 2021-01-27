//
//  Image.swift
//  mobile
//
//  Created by Andrii on 1/27/21.
//

import Foundation
import SwiftUI
import Combine

struct ImageURL: View {
    @ObservedObject var imageModel: ImageModel

    private let imageSide: CGFloat = 50

    init(_ imageUrl: String) {
        self.imageModel = ImageModel(imageURL: imageUrl)
    }

    var body: some View {
        Image(uiImage: imageModel.image)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: imageSide, height: imageSide)
    }
}
