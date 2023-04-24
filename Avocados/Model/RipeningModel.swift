//
//  RipeningModel.swift
//  Avocados
//
//  Created by Pham Nguyen Phu on 24/04/2023.
//

import Foundation

struct Ripening: Identifiable {
    let id = UUID()
    let image: String
    let stage: String
    let title: String
    let description: String
    let ripeness: String
    let instruction: String
}
