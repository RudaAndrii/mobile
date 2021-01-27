//
//  UserDefaultsService.swift
//  mobile
//
//  Created by Andrii on 1/27/21.
//

import Foundation
import SwiftUI

class UserDefaultsService {
    static let shared = UserDefaultsService()
    
    private let userDefaults = UserDefaults.standard
    
    func appendArray(_ data: Data, for key: String) {
        guard var persisted = self.getArray(for: key) else {
            return userDefaults.set([data], forKey: key)
        }
        persisted.append(data)
        userDefaults.set(persisted, forKey: key)
    }
    
    func getArray(for key: String) -> [Data]? {
        userDefaults.array(forKey: key) as? [Data]
    }
    
}
