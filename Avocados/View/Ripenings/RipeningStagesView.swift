//
//  RipeningStagesView.swift
//  Avocados
//
//  Created by Pham Nguyen Phu on 19/04/2023.
//

import SwiftUI

struct RipeningStagesView: View {
    // MARK: - PROPERTY

    // MARK: - BODY

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack {
                Spacer()
                HStack(spacing: 30) {
                    ForEach(ripenings) { item in
                        RipeningView(ripening: item)
                    }
                }
                .padding(30)
                Spacer()
            }
        }
    }
}

struct RipeningStagesView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningStagesView()
    }
}
