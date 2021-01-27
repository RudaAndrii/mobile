//
//  PhotoController.swift
//  mobile
//
//  Created by Andrii on 1/27/21.
//

import Foundation
import SwiftUI
import Alamofire

struct PhotoController {

    private static let URL = "https://api.unsplash.com/photos/?client_id=ntktszWNVwwwwQhJLxZ4X-1QlVuF4t6ZXx61pQFzO9I";
    
    static func getPhotos(completion complete: @escaping ([PhotoModel]?) -> Void) {
        AF.request(URL)
            .responseDecodable(of: [PhotoModel].self) { response in
                complete(response.value)
            }
    }
}
