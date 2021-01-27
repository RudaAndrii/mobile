//
//  Photo.swift
//  mobile
//
//  Created by Andrii on 1/23/21.
//

import Foundation
import SwiftUI

struct PhotoView: View {
    @ObservedObject private var viewModel = PhotosViewModel()
    
    var body: some View {
        HStack {
            if viewModel.photos.isEmpty {
                Text("No photos")
            } else {
                List(viewModel.photos) { photo in
                    ImageURL(photo.urls["small"]!)
                    Text (photo.altDescription ?? "Empty description")
                }
            }
        }
        .onAppear(perform: fetchPhotos)
    }

    private func fetchPhotos() {
        viewModel.loadPhotos()
    }
}
