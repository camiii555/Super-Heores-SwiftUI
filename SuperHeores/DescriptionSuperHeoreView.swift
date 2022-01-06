//
//  DescriptionSuperHeoreView.swift
//  SuperHeores
//
//  Created by MacBook J&J  on 31/12/21.
//

import SwiftUI

struct DescriptionSuperHeoreView: View {
    let items: ModelSuperHereo
    var body: some View {
        VStack{
            ImageSuperHeoreView(image: items, width: 300, height: 300, alignment: .center)
            Text(items.name).font(.largeTitle)
            Text("")
            Text("Real name: \(items.realname)").font(.title3)
            Text("")
            Text(items.description)
                .font(.subheadline)
                .multilineTextAlignment(.leading)
                .padding(.all)
            Spacer()
        }
    }
}


