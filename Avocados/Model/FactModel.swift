//
//  FactModel.swift
//  Avocados
//
//  Created by Pham Nguyen Phu on 21/04/2023.
//

import SwiftUI

struct Fact: Identifiable {
    let id = UUID()
    let image: String
    let content: String
}
