//
//  PhotoObserver.swift
//  mobile
//
//  Created by Andrii on 1/23/21.
//

import Foundation
import SwiftUI
import Alamofire

class PhotoObserver: ObservableObject {
    @Published var photos = [PhotoModel]()
    
    init() {
        getPhotos()
    }
    
    func getPhotos(count: Int = 5) {
        AF.request("https://api.unsplash.com/photos/?client_id=ntktszWNVwwwwQhJLxZ4X-1QlVuF4t6ZXx61pQFzO9I")
            .responseDecodable(of: [PhotoModel].self) { response in
                guard let photosResponse = response.value else { return }
                self.photos = photosResponse
            }
    }
}
