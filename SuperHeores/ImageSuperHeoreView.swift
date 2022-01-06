//
//  ImageSuperHeoreView.swift
//  SuperHeores
//
//  Created by MacBook J&J  on 31/12/21.
//

import SwiftUI
import Kingfisher

struct ImageSuperHeoreView: View {
    let image: ModelSuperHereo
    let width: CGFloat
    let height: CGFloat
    let alignment: Alignment  
    var body: some View {
        KFImage(URL(string: image.image))
            .resizable()
            .frame(width: width, height: height, alignment: alignment)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.black, lineWidth: 2))
    }
}

