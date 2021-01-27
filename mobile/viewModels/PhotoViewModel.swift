//
//  PhotoViewModel.swift
//  mobile
//
//  Created by Andrii on 1/27/21.
//

import Foundation
import SwiftUI

final class PhotosViewModel: ObservableObject {
    @Published var photos = [PhotoModel]()

    func loadPhotos() {
        PhotoController.getPhotos() { fetchedPhotos in
            if let photos = fetchedPhotos {
                self.photos = photos
            } else {
                self.photos = []
            }
        }
    }
}
