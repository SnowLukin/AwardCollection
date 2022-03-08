//
//  HorizontalGridView.swift
//  AwardCollection
//
//  Created by Snow Lukin on 08.03.2022.
//

import SwiftUI

struct HorizontalGridView: View {
    
    let data = 1...10
    let rows = [
        GridItem(.fixed(20))
    ]
    
    var body: some View {
        ScrollView {
            LazyHGrid(rows: rows) {
                ForEach(data, id: \.self) { item in
                    Text("Image \(item)")
                }
            }
        }
    }
}

struct HorizontalGridView_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalGridView()
    }
}
